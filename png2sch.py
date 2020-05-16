#!/usr/bin/python
# -*- coding: utf-8 -*-

import getopt, sys, os
import cv2
import numpy as np

import constants
import shape as sp
import dictTranslator as dt
import logger
import kicad
import schError

gateTranslator = dt.DictTranslator(constants.GATE_DICT)
padTranslator = dt.DictTranslator(constants.PAD_DICT)


def guessPadTextSize(image, x, y, yp, inc):
    xp = x + 18 * inc
    (ymax, xmax) = image.shape[:2]

    while 0 <= x and 0 <= xp and x < xmax and xp < xmax:
        total = np.sum((image[y:yp, min(x, xp): max(x, xp)] == 0), axis = 0)

        if (inc == -1 and np.all(total[:6] == 0)) or (inc == 1 and np.all(total[-6:] == 0)):
            return (min(x, xp), y, max(x, xp), yp)

        xp = xp + inc
    else:
        if xp < 0:
            xp = 0
        if xp == xmax:
            xp = xmax - 1

        return (min(x, xp), y, max(x, xp), yp)

# depending on the type of the object, define the position of the bounding box of the text,
# extract the text image, hash and compare against dict.
def readName(schematic, img_gray, shape, verbose):
    textx = None
    texty = None
    textxp = None
    textyp = None
    
    translator = None
    postTreatment = False

    if shape.type == constants.SPECIAL:
        return # nothing
    elif shape.type == constants.INPUT:
        (textx, texty, textxp, textyp) = guessPadTextSize(img_gray, shape.pt[0] - 6, shape.pt[1] + 1, shape.pt[1] + shape.h, -1)
        postTreatment = True
        translator = padTranslator
    elif shape.type == constants.OUTPUT:
        (textx, texty, textxp, textyp) = guessPadTextSize(img_gray, shape.pt[0] + shape.w + 2, shape.pt[1] + 1, shape.pt[1] + shape.h, 1)
        postTreatment = True
        translator = padTranslator
    elif shape.type in [constants.JUNC_E, constants.JUNC_W, constants.JUNC_S, constants.JUNC_N, constants.FULL_JUNC]:
        return # nothing
    elif shape.type == constants.TRIBUF:
        textx = shape.pt[0]
        texty = shape.pt[1] + 1 + shape.h # spacing and letter height and border

        textxp = textx + 4 * 25 # 4 letters
        textyp = texty + 18 + 4 + 1 # 1 letter and 2 borders

        translator = gateTranslator
    else:
        textx = shape.pt[0]
        texty = shape.pt[1] - 5 - 20 # spacing and letter height and border

        textxp = textx + 4 * 25# 4 letters
        textyp = texty + 18 + 4 + 1 # 1 letter and 2 borders

        translator = gateTranslator

    cv2.rectangle(schematic, (textx, texty), (textxp, textyp), (0, 0, 0), 1)

    if translator != None:
        # extract text picture
        textimg = img_gray[texty:textyp, textx:textxp]

        total = np.sum((textimg == 0), axis = 0)
        textHash = ''.join(map(lambda x: chr(ord('A') + x), total))

        (name, start, stop) = translator.translate(textHash)

        if verbose >= 2:
            logger.logImage(img_gray[texty - 1:textyp, textx:textxp]) # -1 to capture inverter
            # print('Name read: [' + name + ']')
            # print('Start pos of letters: ' + str(start))
            # print('Stop pos of letters : ' + str(stop))

        if not postTreatment:
            return name
        else:
            # post treatment: powerful magic. 
            # extract the inverter bar
            textimg = img_gray[texty - 1:texty, textx:textxp]
            inverted = []

            # guess the start and stop position of the segments
            beg = None
            for i in range(textxp - textx):
                if textimg[0, i] == 0:
                    if beg == None:
                        beg = i
                else:
                    if beg != None:
                        inverted.append((beg, i))
                        beg = None
            if beg != None:
                inverted.append((beg, textxp - textx))

            # if verbose >= 2:
            #     print('(Start, Stop) pos of inverter: ' + str(inverted))

            # no inversion? return name
            if len(inverted) == 0:
                return name
            
            # normalize start and stop position:
            # - move back start to the end of previous char, then move forward to the beginning of next char
            # - move back stop to the end of previous char
            invertedstart = []
            invertedstop = []
            for i in range(len(inverted)):
                (beg, end) = inverted[i]
                while beg > 0 and not beg in stop:
                    beg = beg - 1
                while beg < (textxp - textx) and not beg in start:
                    beg = beg + 1
                invertedstart.append(beg)
                while end > 0 and not end in stop:
                    end = end - 1
                invertedstop.append(end)

            # if verbose >= 2:
            #     print('Norm start pos of letters:' + str(invertedstart))
            #     print('Norm stop pos of letters :' + str(invertedstop))

            newname = ''
            for i in range(len(name)):
                pos = start[i]
                if pos in invertedstart:
                    if i != 0:
                        newname = newname + '_'
                    newname = newname + '/'
                newname = newname + name[i]
                pos = stop[i]
                if pos in invertedstop and i < len(name) - 1:
                    newname = newname + '_'

            # if verbose >= 2:
            #     print('Name returns: [' + newname + ']')

            return newname

def image_resize(image, width = None, height = None, inter = cv2.INTER_AREA):
    dim = None
    (h, w) = image.shape[:2]
    if width is None and height is None:
        return image
    if width is None:
        r = height / float(h)
        dim = (int(w * r), height)
    else:
        r = width / float(w)
        dim = (width, int(h * r))
    resized = cv2.resize(image, dim, interpolation = inter)
    return resized

def usage():
    print('Usage: python png2sch.py [options...] <input image.png>...')
    print('\t-h|--help: displays help')
    print('\t-g|--grid: specifies the grid size, defaults to 50')
    print('\t-b|--border: specifies the border size, defaults to 500')
    print('\t-l|--library: specifies the kicad library file')
    print('\t-r|--resize: scale factor for the kicad library file, defaults to 1.0')
    print('\t-z|--zoodir: speciies zoo directory, defaults to ./zoo')
    print('\t-o|--outputdir: specifies output directory, defaults to .')
    print('\t-v|--verbose: sets verbosity [0 (default), 1, 2]')
    print('\nLibrary and symmbol table are generated in the output folder only if they do not exist already')

def main():
    zoodir = 'zoo'
    outputdir = '.'
    verbose = 0
    kicadlibfile = None
    kicadlibname = None
    kicadlib = None
    grid = 50
    border = 500
    kicadlibresize = 1.0
    nameprefix = 'U'

    try:
        opts, args = getopt.getopt(sys.argv[1:], "ho:z:v:l:g:r:b:", ["help", "outputdir=", "zoodir=", "verbose=", "library=", "grid=", "resize=", "border="])
    except getopt.GetoptError as err:
        print str(err)
        usage()
        sys.exit(2)
    for o, a in opts:
        if o in ("-v", "--verbose"):
            verbose = int(a)
        elif o in ("-h", "--help"):
            usage()
            sys.exit()
        elif o in ("-o", "--outputdir"):
            outputdir = a
        elif o in ("-z", "--zoodir"):
            zoodir = a
        elif o in ("-l", "--library"):
            kicadlibfile = a
        elif o in ("-g", "--grid"):
            grid = int(a)
        elif o in ("-b", "--border"):
            border = int(a)
        elif o in ("-r", "--resize"):
            kicadlibresize = float(a)
        else:
            assert False, "unhandled option"

    if len(args) == 0:
        usage()
        sys.exit(2)

    if zoodir[-1] != '/':
        zoodir = zoodir + '/'
    if outputdir[-1] != '/':
        outputdir = outputdir + '/'

    if not os.path.exists(outputdir):
        os.makedirs(outputdir)

    if kicadlibfile.rfind('/') == -1:
        kicadlibname = kicadlibfile.replace('.lib', '')
    else:
        kicadlibname = kicadlibfile[kicadlibfile.rfind('/') + 1:].replace('.lib', '')

    if verbose >= 1:
        print ('Grid is ' + str(grid))

    if verbose >= 1:
        print ('Border is ' + str(border))

    kicadlib = kicad.Library(kicadlibfile, kicadlibname, grid, verbose)

    # for each image
    for inputimage in args:
        imageName = None
        if inputimage.rfind('/') == -1:
            imageName = inputimage
        else:
            imageName = inputimage[inputimage.rfind('/') + 1:]

        print('Processing ' + imageName)

        errors = []
        namedict = {}
        objects = [sp.Shape(None, constants.SPECIAL, (-1, -1), -1, -1)]

        schematic = cv2.imread(inputimage)
        img_gray = cv2.cvtColor(schematic, cv2.COLOR_BGR2GRAY)
        (h, w) = img_gray.shape[:2]

        # 11693 8268
        pagew = None
        pageh = None

        if w > h:
            pagew = 11693
            pageh = 8268
            if verbose >= 1:
                print ('Layout: landscape')
        else:
            pagew = 8268
            pageh = 11693
            if verbose >= 1:
                print ('Layout: portrait')

        scalex = ((pagew * 1.0) - (border * 2)) / w
        scaley = ((pageh * 1.0) - (border * 2)) / h

        if verbose >= 1:
            print ('Scaling: ' + str(scalex) + '/' + str(scaley))
            print ('Offset: ' + str(border) + '/' + str(border))

        # 16bits unsigned array. one 'color' per object
        edges = np.zeros((h, w), np.uint16)

        # TODO: change order, from most complex to most simple (else simple element might be detected inside the features of complex ones)
        for element in constants.ZOO:
            if verbose >= 1:
                print ("Processing " + zoodir + element[1])

            # read template from disk 
            template = cv2.imread(zoodir + element[1], 0)
            w, h = template.shape[::-1]

            # match template against image
            res = cv2.matchTemplate(img_gray,template,cv2.TM_CCOEFF_NORMED)
            threshold = 0.90 # 0.8

            # extract likely position of template 
            loc = np.where( res >= threshold )

            for pt in zip(*loc[::-1]):
                # if the detected object doesn't overlap another object...
                uniqueobjs = np.unique(edges[pt[1]:pt[1] + h - 1, pt[0]:pt[0] + w - 1])
                if len(uniqueobjs) == 1 and uniqueobjs[0] == 0:
                    # create shape
                    shape = sp.Shape(img_gray, element[0], pt, w, h, verbose)

                    if shape.type == constants.SPECIAL:
                        if verbose >= 1:
                            print(' Wrong shape detected!')
                    else:
                        # new object, record its position on the edge mask
                        edges[pt[1]:pt[1] + h -1 , pt[0]:pt[0] + w -1] = len(objects)

                        # mark the position on the original control image
                        cv2.rectangle(schematic, pt, (pt[0] + w, pt[1] + h), shape.color(), 3)

                        shapename = readName(schematic, img_gray, shape, verbose)

                        if shapename == '':
                            shapename = nameprefix + str(len(objects))
                            errors.append(schError.NoName(shape))
                        elif shapename in namedict.keys() and not shape.type in [constants.INPUT, constants.OUTPUT]:
                            oldname = shapename
                            shapename = oldname + '_' + str(len(objects))
                            errors.append(schError.NameCollision(namedict[oldname], shape))

                        shape.name = shapename

                        if shapename != None and not shape.type in [constants.INPUT, constants.OUTPUT]:
                            namedict[shapename] = shape

                        if verbose >= 1:
                            print(' Object ' + str(len(objects)) + ': ' + shape.toString())

                        objects.append(shape)
                else:
                    # overlapping objects, discard
                    sentence = ' discarding object, overlapping with: '
                    for obj in uniqueobjs:
                        if obj != 0:
                            sentence = sentence + ' ' + str(obj) + ' (' + objects[obj].typeName() + ')'
                    if verbose >= 1:
                        print(sentence)

        # for each object, follow wires and list interconnections
        connections = {} # '(object1, wire1): (object2, wire2)' and '(object2, wire2): (object1, wire1)' are added to that dict
        connected = [] # 'src' and 'dest' are added to this hashmap
        unconnected = [] # unconnected pins go here
        missing_o = 0
        missing_w = 0

        for i in range(1, len(objects)):
            shape = objects[i]
            if shape.type == constants.SPECIAL:
                continue
            for j in range(shape.wireCount()):
                if (i, j) in connected:
                    # print('Skipping connected object:wire ' + str(i) + ':' + str(j))
                    continue
                if verbose >= 1:
                    print('Processing object ' + str(i) + ' ['+ shape.toString() + '] wire ' + str(j))
                o, w = shape.followWire(schematic, img_gray, edges, objects, j, verbose)
                # print('Found ' + str(o) + ',' + str(w))
                if o == 0:
                    if verbose >= 1:
                        print('Unconnected object:wire ' + str(i) + ':' + str(j) + '?')
                    missing_o = missing_o + 1
                    unconnected.append((i, j))
                    continue
                if w == -1:
                    if verbose >= 1:
                        print('Connected to object ' + str(o) + ' but wire not found?')
                    missing_w = missing_w + 1
                    continue
                if (o, w) in connected:
                    p, q = connections.get((o, w))
                    if verbose >= 1:
                        print('object:wire ' + str(i) + ':' + str(j) + ' already connected to ' + str(p) + ':' + str(q))
                    continue
                connections.update( {(i, j) : (o, w)} )
                connections.update( {(o, w) : (i, j)} )
                connected.append((i, j))
                connected.append((o, w))

        print('## Wires not connected: ' + str(missing_o))
        print('## Wires connected but not matched: ' + str(missing_w))

        if kicadlibresize != 1.0:
            if verbose >= 1:
                print('Resizing library...')
            kicadlib.resize(kicadlibresize, grid)

        print('Generating schema')
        kicad.writeLib(outputdir, kicadlib, verbose)
        kicad.writeSch(errors, outputdir, pagew, pageh, kicadlib, imageName.replace('.png', ''), objects, connections, unconnected, border, border, scalex, scaley, grid, verbose)

        if len(errors) != 0:
            with open(outputdir + imageName.replace('.png', '_errors.txt'), 'w') as f:
                print('Issues detected:')
                f.write('Issues detected:\n')
                for error in errors:
                    print('> ' + error.toString())
                    f.write('> ' + error.toString() + '\n')

        # save control image
        if verbose >= 1:
            cv2.imwrite(outputdir + imageName.replace('.png', '_processed.png'), schematic) 

    # end for each image

if __name__== "__main__":
  main()