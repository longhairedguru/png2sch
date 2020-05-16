# -*- coding: utf-8 -*-

import cv2
import numpy as np

import constants
import fixShape

class Shape:
    def __init__(self, img_gray, type, pt, w, h, verbose = 0):
        self.type = type
        self.pt = pt
        self.w = w
        self.h = h
        self.wires = []
        self.name = None

        if type != constants.SPECIAL:
            # record position of wires on edges
            self.detectWiresOnEdges(img_gray, verbose)
            # fix shape type depending on wires count (think inverter -> tribuf, or input pad -> output pad) 
            fixShape.applyRules(self, verbose)

    def typeName(self):
        switcher = {
            constants.INPUT: "input pad",
            constants.OUTPUT: "output pad",
            constants.BIDIR: "input/output pad",
            constants.INVERTER: "inverter gate",
            constants.AND: "and gate",
            constants.NAND: "nand gate",
            constants.NAND5: "nand5 gate",
            constants.NAND6: "nand6 gate",
            constants.NAND7: "nand7 gate",
            constants.OR: "or gate",
            constants.NOR: "nor gate",
            constants.NOR5: "nor5 gate",
            constants.NOR6: "nor6 gate",
            constants.NOR8: "nor8 gate",
            constants.XOR: "xor gate",
            constants.XNOR: "xnor gate",
            constants.DTFF: "dtff",
            constants.DTFF3: "dtff3",
            constants.DFF2: "dff2",
            constants.MUX: "mux",
            constants.MUXI: "mux inverted",
            constants.AOI_MUX2: "aoi mux2",
            constants.AOI_MUX3: "aoi mux3",
            constants.AOI_MUX4: "aoi mux4",
            constants.AOI_MUX6: "aoi mux6",
            constants.OA: "or/and gate",
            constants.AO: "and/or gate",
            constants.AOI: "and/nor gate",
            constants.JUNC_E: "eastbound junction",
            constants.JUNC_W: "westbound junction",
            constants.JUNC_N: "northbound junction",
            constants.JUNC_S: "southbound junction",
            constants.FULL_JUNC: "junction",
            constants.TRIBUF: "tristate buffer",
            constants.LATCH: "latch",
            constants.COUNT: "adder",
            constants.HALF_ADDER: "half adder",
            constants.FULL_ADDER: "full adder",
            constants.RAM: "ram",
        }
        return switcher.get(self.type, "???")

    # colors are blue green red
    def color(self):
        switcher = {
            constants.INPUT: (200, 174, 255), # rose
            constants.OUTPUT: (27, 0, 136), # brown
            constants.BIDIR: (27, 0, 136), # brown
            constants.INVERTER: (69, 209, 14), # green
            constants.AND: (36, 28, 236), # red
            constants.NAND: (36, 28, 236), # red
            constants.NAND5: (36, 28, 236), # red
            constants.NAND6: (36, 28, 236), # red
            constants.NAND7: (36, 28, 236), # red
            constants.OR: (204, 72, 63), # blue
            constants.NOR: (204, 72, 63), # blue
            constants.NOR5: (204, 72, 63), # blue
            constants.NOR6: (204, 72, 63), # blue
            constants.NOR8: (204, 72, 63), # blue
            constants.XOR: (72, 204, 63), # green
            constants.XNOR: (72, 204, 63), # green
            constants.DTFF: (39, 127, 255), # orange
            constants.DTFF3: (39, 127, 255), # orange
            constants.DFF2: (39, 127, 255), # orange
            constants.MUX: (0, 128, 0), # dark green
            constants.MUXI: (0, 128, 0), # dark green
            constants.AOI_MUX2: (0, 128, 0), # dark green
            constants.AOI_MUX3: (0, 128, 0), # dark green
            constants.AOI_MUX4: (0, 128, 0), # dark green
            constants.AOI_MUX6: (0, 128, 0), # dark green
            constants.OA: (169, 205, 63), # blue green
            constants.AO: (169, 205, 63), # blue green
            constants.AOI: (169, 205, 63), # blue green
            constants.JUNC_E: (0, 0, 0),
            constants.JUNC_W: (0, 0, 0),
            constants.JUNC_N: (0, 0, 0),
            constants.JUNC_S: (0, 0, 0),
            constants.FULL_JUNC: (0, 0, 0),
            constants.TRIBUF: (69, 209, 14), # green
            constants.LATCH: (0, 242, 255), # yellow
            constants.COUNT: (251, 255, 140), # cyan
            constants.HALF_ADDER: (251, 255, 140), # cyan
            constants.FULL_ADDER: (251, 255, 140), # cyan
            constants.RAM: (86, 122, 185), # brown
        }
        return switcher.get(self.type, (128, 128, 128))

    def followEdge(self, image, x, y, t, u, w, side, verbose = 0):
        inWire = False
        wireStart = None
        color = image[y, x]
        start = 0

        if color == 0:
            if verbose >= 1:
                print('Warning: entering edge on side ' + side + ' in a wire, discarded...')
            
            while color == 0 and start < w:
                start += 1
                color = image[y + (u * start), x + (t * start)]
        
        for i in range(start, w):
            nextcolor = image[y + (u * i), x + (t * i)]
            if nextcolor != color:
                if not inWire:
                    inWire = True
                    wireStart = i
                else:
                    # check wire width
                    if abs(i - wireStart) > 3:
                        if verbose >= 1:
                            print('Warning: wire too wide (' + str(abs(i - wireStart)) + ') detected on side ' + side + ' at pos ' + str(wireStart) + ', discarded...')
                    else:
                        self.wires.append((side, wireStart - 1)) # see comment below, start is off by one
                    inWire = False
            color = nextcolor
        if inWire:
            if verbose >= 1:
                print('Warning: leaving edge on side ' + side + ' in a wire, discarded...')


    def detectWiresOnEdges(self, image, verbose = 0):
        # process image and walk around edges to count the number of changes of colors
        # the bounding box is off by one in every direction, because input/output pads can
        # be placed really close, and template is exactly on the edge or the element
        # to walk exactly on the template limits, one must fix the shape and remove wires 
        # detected n and s.
        x = self.pt[0] - 1
        y = self.pt[1] - 1
        w = self.w + 2
        h = self.h + 2

        # follow edges clock-wise
        self.followEdge(image, x, y, 1, 0, w, 'n', verbose)
        self.followEdge(image, x + w - 1, y, 0, 1, h, 'e', verbose)
        self.followEdge(image, x + w - 1, y + h - 1, -1, 0, w, 's', verbose)
        self.followEdge(image, x, y + h - 1, 0, -1, h, 'w', verbose)
        
    def toString(self):
        # sentence = self.typeName() + ' (n: ' + str(len(self.north)) + ', e: ' + str(len(self.east)) + ', s: ' + str(len(self.south)) + ', w: ' + str(len(self.west)) + ')'
        sentence = self.typeName()
        if self.name != None:
            sentence = sentence + ' [' + self.name + ']'
        sentence = sentence + ' (n: ' + str(len([(x, y) for (x, y) in self.wires if x == 'n'])) + ', e: ' + str(len([(x, y) for (x, y) in self.wires if x == 'e'])) + ', s: ' + str(len([(x, y) for (x, y) in self.wires if x == 's'])) + ', w: ' + str(len([(x, y) for (x, y) in self.wires if x == 'w'])) + ') x=' + str(self.pt[0]) + ' y=' + str(self.pt[1])
        return sentence

    def wireCount(self):
        # return len(self.north) + len(self.east) + len(self.south) + len(self.west)
        return len(self.wires)

    def getWirePosition(self, side, pos):
        if side == 'n':
            return (self.pt[0] + pos, self.pt[1])
        elif side == 'e':
            return (self.pt[0] + self.w - 1, self.pt[1] + pos)
        elif side == 's':
            return (self.pt[0] + self.w - 1 - pos, self.pt[1] + self.h - 1)
        else:
            return (self.pt[0], self.pt[1] + self.h - 1 - pos)      

    def findWireByPosition(self, x, y, s, verbose = 0):
        pos = None

        # s is the direction the wire is going to, needs to be reversed from the element standpoint
        switcher = {
            'n': 's',
            's': 'n',
            'e': 'w',
            'w': 'e'
        }
        side = switcher.get(s)

        if side == 'n':
            pos = x - self.pt[0]
        elif side == 'e':
            pos = y - self.pt[1]
        elif side == 's':
            pos = self.pt[0] + self.w - 1 - x
        else:
            pos = self.pt[1] + self.h - 1  - y

        # print('')
        # print('  -> x=' + str(self.pt[0]) + ' y=' + str(self.pt[1]) + ' w=' + str(self.w) + ' h=' + str(self.h) + ' wire x=' + str(x) + ' y=' + str(y))
        # print('  -> Looking for ' + side + ':' + str(pos) + ' in ' + str(self.wires))

        # Wires are 3 px thick, and elements edge are parsed clockwise starting top/left corner, so we just cannot self.wires.index((side, pos))
        # because wire lands between pos and pos + 3
        for i in range(len(self.wires)):
            (wireside, wirepos) = self.wires[i]
            if wireside == side:
                if wirepos <= pos and pos < wirepos + 3:
                    if verbose >= 1:
                        print('Hit wire ' + str(i))
                    return i
        
        if verbose >= 1:
            print('No matching wire :(')
        return -1

    def trySide(self, image, x, y, side, color):
        d = constants.DIRECTIONS.get(side)
        t, u = d[0]
        x = x + t
        y = y + u

        good = image[y, x] == color

        x = x + t
        y = y + u

        good = good and ( image[y, x] == color )

        x = x + t
        y = y + u

        good = good and ( image[y, x] == color )

        return good

    # follow wires by looking at the input image. Recurse at every corner
    def followWireToConnection(self, control, image, edges, objects, x, y, side, verbose = 0):
        color = image[y, x]
        (h, w) = image.shape[:2]

        d = constants.DIRECTIONS.get(side)
        t, u = d[0]
        steps = 0

        nextcolor = color

        if verbose >= 1:
            print(side),

        while 1 <= x and x < (w - 1) and 1 <= y and y < (h - 1): # shorten the boundaries because first thing we do is +/-1 on each coordinate
            nextcolor = image[y + u, x + t]
            steps = steps + 1
            if nextcolor == color:
                # still on the wire
                x = x + t
                y = y + u
                if edges[y, x] != 0:
                    # connected, find the wire on specific side
                    shape = objects[edges[y, x]]
                    if verbose >= 1:
                        print(str(steps) + " Hit object " + str(edges[y, x]) + ' [' + shape.toString() + ']'),
                    return (edges[y, x], shape.findWireByPosition(x, y, side, verbose))
            else:
                if verbose >= 1:
                    print(str(steps)),
                # lost the wire try sides d[1] & d[2]
                firstside = self.trySide(image, x, y, d[1], color)
                secondside = self.trySide(image, x, y, d[2], color)

                if firstside and (not secondside):
                    return self.followWireToConnection(control, image, edges, objects, x, y, d[1])
                if (not firstside) and secondside:
                    return self.followWireToConnection(control, image, edges, objects, x, y, d[2])

                cv2.circle(control, (x, y), 15, (0, 0, 255), cv2.FILLED)
                if verbose >= 1:
                    print('  Lost :(')
                return (0, 0)
        else:
            if verbose >= 1:
                print('Reached bounds of image :(')
        return (0, 0)

    def followWire(self, control, image, edges, objects, j, verbose = 0):
        # find wire position
        side, pos = self.wires[j]
        x, y = self.getWirePosition(side, pos)

        if verbose >= 1:
            print(' Going'),
        return self.followWireToConnection(control, image, edges, objects, x, y, side, verbose)
