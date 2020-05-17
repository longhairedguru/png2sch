# -*- coding: utf-8 -*-

import sys
import os.path
import json

import constants
import shape as sp
import schError

def getComponentNameFromShape(obj, verbose = 0):
    name = ''

    if obj.name != None:
        name = obj.name

    return name

def getComponentFromShape(obj, verbose = 0):
    name = ''
    
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
    elif obj.type in [constants.JUNC_E, constants.JUNC_W, constants.JUNC_N, constants.JUNC_S]:
        name = "junc3"
    elif obj.type == constants.FULL_JUNC:
        name = "junc4"
    elif obj.type == constants.INPUT:
        name = "in"
    elif obj.type == constants.OUTPUT:
        name = "out"
    elif obj.type == constants.BIDIR:
        name = "inout"
    return name

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

def writeSch(errors, outputdir, name, objects, connections, unconnected, verbose = 0):
    kobjects = {}
    kobjects['cells'] = []
    kobjects['wires'] = []
    
    for i in range(1, len(objects)):
        obj = objects[i]

        jobj = {
            'id': i,
            'type': getComponentFromShape(obj),
            'name': getComponentNameFromShape(obj),
            'x': obj.pt[0],
            'y': obj.pt[1]
        }

        kobjects['cells'].append(jobj)

    connected = [] # 'src' and 'dest' are added to this hashmap

    for (o, w) in connections:
        p, q = connections.get((o, w))

        if (o, w) in connected or (p, q) in connected:
            continue

        jobj = {
            'o1': int(o),
            'w1': int(w),
            'o2': int(p),
            'w2': int(q)
        }

        kobjects['wires'].append(jobj)

    with open(outputdir + name + '.json', 'w') as f:
        if verbose >= 1:
            print('Writing json dump ' + name)
        json.dump(kobjects, f)