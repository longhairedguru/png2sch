# -*- coding: utf-8 -*-

import sys

class DictTranslator:
    class Node:
        def __init__(self):
            self.child = {}
            self.word = []

    def __init__(self, dictionary):
        self.root = self.Node()
        self.dictionary = dictionary

        for word in self.dictionary.keys():
            node = self.root
            for letter in word:
                node = node.child.setdefault(letter, self.Node())
            node.word.append(word)
            if len(node.word) != 1:
                sys.stderr.write("Collision in the dictionary! " + str(node.word) + " !")
    
    def translate(self, sentence):
        node = self.root
    
        ret = ''
        start = []
        end = []
        i = 0
        savedState = None

        while i < len(sentence):
            letter = sentence[i]

            if node.child.has_key(letter):
                if len(node.word) != 0:
                    savedState = (node, i)
                elif node == self.root:
                    savedState = (self.root, i + 1)
                i = i + 1
                node = node.child.get(letter)
            else:
                if len(node.word) != 0:
                    ret = ret + self.dictionary.get(node.word[0])
                    start.append(i - len(node.word[0]))
                    end.append(i)
                    savedState = None
                    node = self.root
                elif savedState != None: # backtrack
                    (node, i) = savedState
                    if len(node.word) != 0:
                        ret = ret + self.dictionary.get(node.word[0])
                        start.append(i - len(node.word[0]))
                        end.append(i)
                    savedState = None
                    node = self.root
                else:
                    i = i + 1
                    node = self.root

        return (ret, start, end)
