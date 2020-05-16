# -*- coding: utf-8 -*-

import numpy as np

import constants

def ruleIO(shape):
    if shape.type == constants.INPUT:
        if len([(x, y) for (x, y) in shape.wires if x == 'w']) != 0:
            shape.type = constants.OUTPUT
        return False 
    if shape.type == constants.OUTPUT:
        if len([(x, y) for (x, y) in shape.wires if x == 'e']) != 0:
            shape.type = constants.INPUT
        return False
    if shape.type == constants.BIDIR:
        shape.type = constants.OUTPUT
        return False

def ruleJUNC(shape):
    if len([(x, y) for (x, y) in shape.wires if x == 'w']) == 1 and len([(x, y) for (x, y) in shape.wires if x == 'n']) == 1 and len([(x, y) for (x, y) in shape.wires if x == 's']) == 1 and len([(x, y) for (x, y) in shape.wires if x == 'e']) == 1: # it is a FULL_JUNC
        shape.type = constants.FULL_JUNC
    return False

def ruleINVERTER(shape):
    if shape.type == constants.TRIBUF:
        if len([(x, y) for (x, y) in shape.wires if x == 'n']) == 0:
            shape.type = constants.INVERTER
        return False
    if shape.type == constants.INVERTER:
        if len([(x, y) for (x, y) in shape.wires if x == 'n']) != 0:
            shape.type = constants.TRIBUF
        return False

def ruleDTFF(shape):
    if shape.type == constants.DTFF:
        if len([(x, y) for (x, y) in shape.wires if x == 'w']) == 4:
            shape.type = constants.DTFF3
        return False
    if shape.type == constants.DTFF3:
        if len([(x, y) for (x, y) in shape.wires if x == 'w']) == 3:
            shape.type = constants.DTFF
        return False

def ruleOneOutput(shape):
    if len([(x, y) for (x, y) in shape.wires if x == 'e']) != 1:
        shape.type = constants.SPECIAL # cannot be fixed
        return False

def ruleNoWireNorth(shape):
    if len([(x, y) for (x, y) in shape.wires if x == 'n']) != 0:
        shape.type = constants.SPECIAL # cannot be fixed
        return False

def ruleNoWireSouth(shape):
    if len([(x, y) for (x, y) in shape.wires if x == 's']) != 0:
        shape.type = constants.SPECIAL # cannot be fixed
        return False

def rule2to4Input(shape):
    if not len([(x, y) for (x, y) in shape.wires if x == 'w']) in [2, 3, 4]:
        shape.type = constants.SPECIAL # cannot be fixed
        return False

def rule5Input(shape):
    if len([(x, y) for (x, y) in shape.wires if x == 'w']) != 5:
        shape.type = constants.SPECIAL # cannot be fixed
        return False

def rule6Input(shape):
    if len([(x, y) for (x, y) in shape.wires if x == 'w']) != 6:
        shape.type = constants.SPECIAL # cannot be fixed
        return False

def rule7Input(shape):
    if len([(x, y) for (x, y) in shape.wires if x == 'w']) != 7:
        shape.type = constants.SPECIAL # cannot be fixed
        return False

def rule8Input(shape):
    if len([(x, y) for (x, y) in shape.wires if x == 'w']) != 8:
        shape.type = constants.SPECIAL # cannot be fixed
        return False



rules = { constants.INPUT: [ ruleIO ],
            constants.OUTPUT: [ ruleIO ],
            constants.BIDIR: [ ruleIO ],
            constants.JUNC_E: [ ruleJUNC ],
            constants.JUNC_W: [ ruleJUNC ],
            constants.JUNC_S: [ ruleJUNC ],
            constants.JUNC_N: [ ruleJUNC ],
            constants.INVERTER: [ ruleINVERTER ],
            constants.TRIBUF: [ ruleINVERTER ],
            constants.AND: [ ruleOneOutput, ruleNoWireNorth, ruleNoWireSouth, rule2to4Input ],
            constants.NAND: [ ruleOneOutput, ruleNoWireNorth, ruleNoWireSouth, rule2to4Input ],
            constants.NAND5: [ ruleOneOutput, ruleNoWireNorth, ruleNoWireSouth, rule5Input ],
            constants.NAND6: [ ruleOneOutput, ruleNoWireNorth, ruleNoWireSouth, rule6Input ],
            constants.NAND7: [ ruleOneOutput, ruleNoWireNorth, ruleNoWireSouth, rule7Input ],
            constants.OR: [ ruleOneOutput, ruleNoWireNorth, ruleNoWireSouth, rule2to4Input ],
            constants.NOR: [ ruleOneOutput, ruleNoWireNorth, ruleNoWireSouth, rule2to4Input ],
            constants.NOR5: [ ruleOneOutput, ruleNoWireNorth, ruleNoWireSouth, rule5Input ],
            constants.NOR6: [ ruleOneOutput, ruleNoWireNorth, ruleNoWireSouth, rule6Input ],
            constants.NOR8: [ ruleOneOutput, ruleNoWireNorth, ruleNoWireSouth, rule8Input ],
            constants.XOR: [ ruleOneOutput, ruleNoWireNorth, ruleNoWireSouth, rule2to4Input ],
            constants.XNOR: [ ruleOneOutput, ruleNoWireNorth, ruleNoWireSouth, rule2to4Input ],
            constants.DTFF: [ ruleDTFF ],
            constants.DTFF3: [ ruleDTFF ],
            constants.DFF2: [ ruleNoWireNorth, ruleNoWireSouth ],
            constants.MUX: [ ruleOneOutput, ruleNoWireNorth, ruleNoWireSouth ],
            constants.MUXI: [ ruleOneOutput, ruleNoWireNorth, ruleNoWireSouth ],
            constants.AOI_MUX2: [ ruleOneOutput, ruleNoWireNorth, ruleNoWireSouth ],
            constants.AOI_MUX3: [ ruleOneOutput, ruleNoWireNorth, ruleNoWireSouth ],
            constants.AOI_MUX4: [ ruleOneOutput, ruleNoWireNorth, ruleNoWireSouth ],
            constants.AOI_MUX6: [ ruleOneOutput, ruleNoWireNorth, ruleNoWireSouth ],
            constants.OA: [ ruleOneOutput, ruleNoWireNorth, ruleNoWireSouth ],
            constants.AO: [ ruleOneOutput, ruleNoWireNorth, ruleNoWireSouth ],
            constants.AOI: [ ruleOneOutput, ruleNoWireNorth, ruleNoWireSouth ],
            constants.LATCH: [ ruleNoWireNorth, ruleNoWireSouth ],
            constants.COUNT: [ ruleNoWireNorth, ruleNoWireSouth ],
            constants.HALF_ADDER: [ ruleNoWireNorth, ruleNoWireSouth ],
            constants.FULL_ADDER: [ ruleNoWireNorth, ruleNoWireSouth ],
            constants.RAM: [ ruleNoWireNorth, ruleNoWireSouth ],
        }

def applyRules(shape, verbose = 0):
    inputType = shape.type

    if not inputType in rules.keys():
        if verbose >= 1:
            print('fixShape: no rule to apply for ' + shape.typeName())
        return

    rulesList = rules.get(inputType)
    ruleId = 0

    if verbose >= 1:
        print("fixShape: Type " + str(inputType) + ' '),
    
    while ruleId < len(rulesList):
        currentRule = rulesList[ruleId]

        if verbose >= 1:
            print(currentRule.__name__ + ' '),

        ret = currentRule(shape)

        outputType = shape.type

        if outputType != inputType:
            if verbose >= 1:
                print('-> Type ' + str(outputType) + ' '),

            if not outputType in rules.keys():
                if verbose >= 1:
                    print('.')
                break;

            rulesList = rules.get(outputType)
            ruleId = 0
        
        if ret == False:
            if verbose >= 1:
                print('.')
            break

        ruleId += 1
    else:
        if verbose >= 1:
            print('.')
