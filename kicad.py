# -*- coding: utf-8 -*-

import sys
import os.path
import time

import constants
import shape as sp
import schError

orientation = { 'D': 'n', 'U': 's', 'L': 'e', 'R': 'w'}

class Library:
    class Component:
        def __init__(self, name, rawfields, wires):
            self.name = name
            self.rawfields = rawfields
            self.wires = wires

    # F0 "U" -140 185 50 H V C CNN
        class Field:
            def __init__(self, elements):
                self.name = elements[1]
                self.posx = int(elements[2])
                self.posy = int(elements[3])
                self.dim = int(elements[4])
                self.o = elements[5]
                if elements[6] == 'V':
                    self.visibility = '0000'
                else:
                    self.visibility = '0001'
                self.justify = elements[7]
                self.style = elements[8]

        def getField(self, n):
            i = 0
            for rawfield in self.rawfields:
                if rawfield[0] == 'F' + str(n):
                    return Library.Component.Field(rawfield)
            return None

    def __init__(self, libfile, libname, grid, verbose = 0):
        self.libname = libname
        self.grid = grid
        self.components = {}
        self.componentorder = []

        if verbose >= 1:
            print('Reading Kicad library ' + libname)

        with open(libfile, 'r') as f:
            name = None
            rawfields = None
            wires = None
            wireCount = 0

            for line in f:
                if line[1:] == '#':
                    continue

                elements = line.split()
                if elements[0] == 'DEF':
                    name = elements[1]
                    fields = []
                    rawfields = []
                    wires = {'n': [], 'e': [], 's': [], 'w': []}
                elif elements[0] == 'X':
                    # Y axis is inverted for pins :(
                    x = int(elements[3])
                    y = int(elements[4]) * -1
                    o = orientation.get(elements[6])
                    wires.get(o).append((x, y))
                    wireCount+=1
                    if verbose >= 1 and (x %  grid != 0 or y % grid != 0):
                        print('Component ' + name + ' wire #' + str(wireCount) + ' does NOT attach to grid!')
                elif elements[0] == 'ENDDEF':
                    rawfields.append(elements)
                    orderedwires = []
                    if len(wires.get('n')) != 0:
                        orderedwires = orderedwires + sorted(wires.get('n'), key = lambda x: (x, y))
                    if len(wires.get('e')) != 0:
                        orderedwires = orderedwires + sorted(wires.get('e'), key = lambda y: (x, y))
                    if len(wires.get('s')) != 0:
                        orderedwires = orderedwires + sorted(wires.get('s'), key = lambda x: (x, y), reverse=True)
                    if len(wires.get('w')) != 0:
                        orderedwires = orderedwires + sorted(wires.get('w'), key = lambda y: (x, y), reverse=True)

                    if verbose >= 1:
                        print(' Adding component ' + name)

                    self.components[name] = Library.Component(name, rawfields, orderedwires)
                    self.componentorder.append(name)
                    name = None
                    rawfields = None
                    wires = None
                    wireCount = 0

                if rawfields != None:
                    rawfields.append(elements)

    # TODO: check grid when resizing!
    def resize(self, scale, grid):
        for name in self.componentorder:
            component = self.components.get(name)
            for rawfield in component.rawfields:
                if rawfield[0] == 'DEF':
                    rawfield[4] = str(int(int(rawfield[4]) * scale))
                elif rawfield[0][0] == 'F':
                    rawfield[2] = str(int(int(rawfield[2]) * scale))
                    rawfield[3] = str(int(int(rawfield[3]) * scale))
                    rawfield[4] = str(int(int(rawfield[4]) * scale))
                elif rawfield[0] == 'P':
                    parts = int(rawfield[1])
                    for i in range(0, parts * 2, 2):
                        rawfield[5 + i] = str(int(int(rawfield[5 + i]) * scale))
                        rawfield[6 + i] = str(int(int(rawfield[6 + i]) * scale))
                elif rawfield[0] == 'S':
                    rawfield[1] = str(int(int(rawfield[1]) * scale))
                    rawfield[2] = str(int(int(rawfield[2]) * scale))
                    rawfield[3] = str(int(int(rawfield[3]) * scale))
                    rawfield[4] = str(int(int(rawfield[4]) * scale))
                elif rawfield[0] == 'C':
                    rawfield[1] = str(int(int(rawfield[1]) * scale))
                    rawfield[2] = str(int(int(rawfield[2]) * scale))
                    rawfield[3] = str(int(int(rawfield[3]) * scale))
                elif rawfield[0] == 'A':
                    rawfield[1] = str(int(int(rawfield[1]) * scale))
                    rawfield[2] = str(int(int(rawfield[2]) * scale))
                    rawfield[3] = str(int(int(rawfield[3]) * scale))
                    rawfield[10] = str(int(int(rawfield[10]) * scale))
                    rawfield[11] = str(int(int(rawfield[11]) * scale))
                    rawfield[12] = str(int(int(rawfield[12]) * scale))
                    rawfield[13] = str(int(int(rawfield[13]) * scale))
                elif rawfield[0] == 'T':
                    rawfield[2] = str(int(int(rawfield[2]) * scale))
                    rawfield[3] = str(int(int(rawfield[3]) * scale))
                    rawfield[4] = str(int(int(rawfield[4]) * scale))
                elif rawfield[0] == 'X':
                    rawfield[3] = str(int(int(rawfield[3]) * scale))
                    rawfield[4] = str(int(int(rawfield[4]) * scale))
                    rawfield[5] = str(int(int(rawfield[5]) * scale))
            
            # ordered wires resize as well
            orderedwires = []
            for (x, y) in component.wires:
                orderedwires.append((int(x * scale), int(y * scale)))
            component.wires = orderedwires

    def write(self, libfile):
        with open(libfile, 'w') as f:
            f.write('EESchema-LIBRARY Version 2.4\n')
            f.write('#encoding utf-8\n')

            for name in self.componentorder:
                f.write('#\n')
                f.write('# ' + name + '\n')
                f.write('#\n')
                component = self.components.get(name)
                for rawfield in component.rawfields:
                    f.write(' '.join(rawfield) + '\n')

            f.write('#\n')
            f.write('#End Library\n')

    def getComponentFromShape(self, obj, verbose = 0):
        name = None

        # if verbose >= 1:
        #     print('Mapping ' + obj.toString()),

        if obj.type == constants.INVERTER:
            name = "inverter"
        elif obj.type == constants.AND:
            name = "and_" + str(len([(x, y) for (x, y) in obj.wires if x == 'w']))
        elif obj.type == constants.NAND:
            name = "nand_" + str(len([(x, y) for (x, y) in obj.wires if x == 'w']))
        elif obj.type == constants.NAND5:
            name = "nand_5"
        elif obj.type == constants.NAND6:
            name = "nand_6"
        elif obj.type == constants.NAND7:
            name = "nand_7"
        elif obj.type == constants.OR:
            name = "or_" + str(len([(x, y) for (x, y) in obj.wires if x == 'w']))
        elif obj.type == constants.NOR:
            name = "nor_" + str(len([(x, y) for (x, y) in obj.wires if x == 'w']))
        elif obj.type == constants.NOR5:
            name = "nor_5"
        elif obj.type == constants.NOR6:
            name = "nor_6"
        elif obj.type == constants.NOR8:
            name = "nor_8"
        elif obj.type == constants.XOR:
            name = "xor_2"
        elif obj.type == constants.XNOR:
            name = "xnor_2"
        elif obj.type == constants.DTFF:
            name = "dtff"
        elif obj.type == constants.DTFF3:
            name = "dtff3"
        elif obj.type == constants.DFF2:
            name = "dff2"
        elif obj.type == constants.MUX:
            name = "mux_2"
        elif obj.type == constants.MUXI:
            name = "mux_2i"
        elif obj.type == constants.AOI_MUX2:
            name = "aoi_mux_2"
        elif obj.type == constants.AOI_MUX3:
            name = "aoi_mux_3"
        elif obj.type == constants.AOI_MUX4:
            name = "aoi_mux_4"
        elif obj.type == constants.AOI_MUX6:
            name = "aoi_mux_6"
        elif obj.type == constants.OA:
            name = "oa"
        elif obj.type == constants.AO:
            name = "ao"
        elif obj.type == constants.AOI:
            name = "aoi"
        elif obj.type == constants.TRIBUF:
            name = "tribuffer"
        elif obj.type == constants.LATCH:
            name = "latch"
        elif obj.type == constants.COUNT:
            name = "adder"
        elif obj.type == constants.HALF_ADDER:
            name = "half_adder"
        elif obj.type == constants.FULL_ADDER:
            name = "full_adder"
        elif obj.type == constants.RAM:
            name = "spram128"

        if name != None:
            # if verbose >= 1:
            #     print('to ' + name)
            return self.components.get(name)

        # if verbose >= 1:
        #     print('failed :(')

        return None

class ComponentWrapper:
    def getComponentPosition(self, offsetx, offsety, scalex, scaley, grid, verbose = 0):
        if self.obj.type == constants.SPECIAL:
            return (None, None)
        elif self.obj.type == constants.INPUT:
            value = int((self.obj.pt[0] + self.obj.w) * scalex)
            posx = value - (value % grid) + offsetx
            value = int((self.obj.pt[1] + (self.obj.h / 2)) * scaley)
            posy = value - (value % grid) + offsety
            return (posx, posy)
        elif self.obj.type == constants.OUTPUT:
            value = int((self.obj.pt[0]) * scalex)
            posx = value - (value % grid) + offsetx
            value = int((self.obj.pt[1] + (self.obj.h / 2)) * scaley)
            posy = value - (value % grid) + offsety
            return (posx, posy)
        elif self.obj.type in [constants.JUNC_E, constants.JUNC_W, constants.JUNC_N, constants.JUNC_S, constants.FULL_JUNC]:
            value = int((self.obj.pt[0] + (self.obj.w / 2)) * scalex)
            posx = value - (value % grid) + offsetx
            value = int((self.obj.pt[1] + (self.obj.h / 2)) * scaley)
            posy = value - (value % grid) + offsety
            return (posx, posy)
        else:
            value = int((self.obj.pt[0] + (self.obj.w / 2)) * scalex)
            posx = value - (value % grid) + offsetx
            value = int((self.obj.pt[1] + (self.obj.h / 2)) * scaley)
            posy = value - (value % grid) + offsety
            return (posx, posy)

    def __init__(self, errors, library, obj, offsetx, offsety, scalex, scaley, grid, verbose = 0):
        self.library = library
        self.obj = obj
        self.component = library.getComponentFromShape(obj, verbose)
        (self.posx, self.posy) = self.getComponentPosition(offsetx, offsety, scalex, scaley, grid, verbose)
        self.wires = []

        # build wires position
        if self.obj.type == constants.SPECIAL:
            return
        elif self.obj.type == constants.INPUT or self.obj.type == constants.OUTPUT:
            self.wires.append((self.posx, self.posy))
            return
        elif self.obj.type in [constants.JUNC_E, constants.JUNC_W, constants.JUNC_N, constants.JUNC_S]:
            self.wires.append((self.posx, self.posy))
            self.wires.append((self.posx, self.posy))
            self.wires.append((self.posx, self.posy))
            return
        elif self.obj.type == constants.FULL_JUNC:
            self.wires.append((self.posx, self.posy))
            self.wires.append((self.posx, self.posy))
            self.wires.append((self.posx, self.posy))
            self.wires.append((self.posx, self.posy))
            return
        else:
            if self.component != None:
                for (x, y) in self.component.wires:
                    self.wires.append((self.posx + x, self.posy + y))
                return
            else:
                errors.append(schError.UnableToMap(obj))
    
    def toString(self):
        sentence = None

        if self.component == None:
            sentence = 'None '
        else:
            sentence = self.library.libname + ':' + self.component.name + ' '

        sentence += str(self.wires)
        sentence += ' / '
        sentence += self.obj.toString()
        return sentence

    # assuming all componants have the same field structure
    #'F 0 "' + obj.name + '" H 2575 1475 50  0000 C CNN\n'
    #'F 1 "' + component.name + '" H 2575 1384 50  0000 C CNN\n'
    #'F 2 "" H 2600 1650 50  0001 C CNN\n'
    #'F 3 "" H 2600 1650 50  0001 C CNN\n'
    def writeField(self, f, i, verbose = 0):
        name = ''
        field = self.component.getField(i)

        if i == 0:
            name = self.obj.name
        elif i == 1:
            name = self.component.name
        
        f.write('F ' + str(i) + ' "' + name + '" ' + field.o + ' ' + str(self.posx + field.posx) + ' ' + str(self.posy + field.posy) + ' ' + str(field.dim) + '  ' + field.visibility + ' ' + field.justify + ' ' + field.style + '\n')

    def writeComponent(self, f, ts, verbose = 0):
        if self.obj.type == constants.SPECIAL:
            return
        elif self.obj.type == constants.INPUT:
            f.write('Text GLabel ' + str(self.posx) + '  ' + str(self.posy) + '  0    50   Input ~ 0\n')
            f.write(self.obj.name + '\n')
        elif self.obj.type == constants.OUTPUT:
            f.write('Text GLabel ' + str(self.posx) + '  ' + str(self.posy) + '  2    50   Output ~ 0\n')
            f.write(self.obj.name + '\n')
        elif self.obj.type in [constants.JUNC_E, constants.JUNC_W, constants.JUNC_N, constants.JUNC_S, constants.FULL_JUNC]:
            f.write('Connection ~ ' + str(self.posx) + ' ' + str(self.posy) +'\n')
        else:
            if self.component != None:
                f.write('$Comp\n')
                f.write('L ' + self.library.libname + ':' + self.component.name + ' ' + self.obj.name + '\n')
                f.write('U 1 1 '+ ts +'\n')
                f.write('P ' + str(self.posx) + ' ' + str(self.posy) + '\n')

                for i in range(4):
                    self.writeField(f, i, verbose)

                f.write('\t1    ' + str(self.posx) + ' ' + str(self.posy) + '\n')
                f.write('\t1    0    0    -1\n')
                f.write('$EndComp\n')

def writeConnections(errors, f, objects, connections, verbose):
    connected = [] # 'src' and 'dest' are added to this hashmap

    for (o, w) in connections:
        p, q = connections.get((o, w))

        if (o, w) in connected or (p, q) in connected:
            continue

        if len(objects[o].wires) <= w:
            errors.append(schError.CannotPlaceWire(w, objects[o], len(objects[o].wires)))
            continue
        if len(objects[p].wires) <= q:
            errors.append(schError.CannotPlaceWire(q, objects[p], len(objects[p].wires)))
            continue
        
        (startx, starty) = objects[o].wires[w]
        (endx, endy) = objects[p].wires[q]
        
        f.write('Wire Wire Line\n')
        f.write('\t' + str(startx) + ' ' + str(starty) + ' ' + str(endx) + ' ' + str(endy) + '\n')

def writeUnconnected(errors, f, objects, unconnected, verbose):
    for (o, w) in unconnected:
        if len(objects[o].wires) <= w:
            errors.append(schError.CannotPlaceUnconWire(w, objects[o], len(objects[o].wires)))
            continue

        (startx, starty) = objects[o].wires[w]
        
        f.write('NoConn ~ ' + str(startx) + ' ' + str(starty) + '\n')

def writeLib(outputdir, library, verbose):
    if not os.path.isfile(outputdir + library.libname + '.lib'):
        if verbose >= 1:
            print('Writing Kicad library ' + library.libname)
        library.write(outputdir + library.libname + '.lib')

    if not os.path.isfile(outputdir + 'sym-lib-table'):
        if verbose >= 1:
            print('Writing Kicad symbol table')
        with open(outputdir + 'sym-lib-table', 'w') as f:
            f.write('(sym_lib_table\n')
            f.write('  (lib (name ' + library.libname + ')(type Legacy)(uri ${KIPRJMOD}/' + library.libname + '.lib)(options "")(descr ""))\n')
            f.write(')\n')

def writeSch(errors, outputdir, w, h, library, name, objects, connections, unconnected, offsetx, offsety, scalex, scaley, grid, verbose):
    kobjects = []

    for obj in objects:
        kobject = ComponentWrapper(errors, library, obj, offsetx, offsety, scalex, scaley, grid, verbose)
        kobjects.append(kobject)

    with open(outputdir + name + '.sch', 'w') as f:
        if verbose >= 1:
            print('Writing Kicad schema ' + name)

        # header
        f.write('EESchema Schematic File Version 4\n')
        f.write('EELAYER 30 0\n')
        f.write('EELAYER END\n')
        
        if w > h:
            f.write('$Descr A4 ' + str(w) + ' ' + str(h) + '\n')
        else:
            f.write('$Descr A4 ' + str(w) + ' ' + str(h) + ' portrait\n')
        
        f.write('encoding utf-8\n')
        f.write('Sheet 1 1\n')
        f.write('Title "' + name + '"\n')
        f.write('Date ""\n')
        f.write('Rev ""\n')
        f.write('Comp ""\n')
        f.write('Comment1 "Converted from ' + name + '.png"\n')
        f.write('Comment2 ""\n')
        f.write('Comment3 ""\n')
        f.write('Comment4 ""\n')
        f.write('$EndDescr\n')

        # print(hex(ts).upper()[2:])
        ts = int(time.time())

        # components
        for obj in kobjects:
            obj.writeComponent(f, hex(ts).upper()[2:], verbose)

        # wires
        writeConnections(errors, f, kobjects, connections, verbose)

        # unconnected
        writeUnconnected(errors, f, kobjects, unconnected, verbose)

        # footer
        f.write('$EndSCHEMATC\n')