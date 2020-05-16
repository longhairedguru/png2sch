# -*- coding: utf-8 -*-

class NoName:
    def __init__(self, shape):
        self.shape = shape
        self.sentence = 'Cannot read name, assigning one to ' + self.shape.toString()
        print(self.sentence)

    def toString(self):
        return self.sentence

class NameCollision:
    def __init__(self, shape1, shape2):
        self.shape1 = shape1
        self.shape2 = shape2
        self.sentence = 'Name collision between ' + self.shape1.toString() + ' and ' + self.shape2.toString()
        print(self.sentence)

    def toString(self):
        return self.sentence

class CannotPlaceWire:
    def __init__(self, w, obj, wcount):
        self.w = w
        self.obj = obj
        self.wcount = wcount
        self.sentence = 'Cannot place wire #' + str(self.w + 1) + ' as object ' + self.obj.toString() + ' has ' + str(self.wcount) + ' wires...'
        print(self.sentence)

    def toString(self):
        return self.sentence

class CannotPlaceUnconWire:
    def __init__(self, w, obj, wcount):
        self.w = w
        self.obj = obj
        self.wcount = wcount
        self.sentence = 'Cannot place unconnected wire #' + str(self.w + 1) + ' as object ' + self.obj.toString() + ' has ' + str(self.wcount) + ' wires...'
        print(self.sentence)

    def toString(self):
        return self.sentence

class UnableToMap:
    def __init__(self, obj):
        self.obj = obj
        self.sentence = 'Unable to map ' + obj.toString()
        print(self.sentence)

    def toString(self):
        return self.sentence
