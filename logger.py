# -*- coding: utf-8 -*-

import numpy as np
import constants

def logImage(image):
    (ymax, xmax) = image.shape[:2]
    border = np.full((ymax + 2, xmax + 2), 255)
    border[0:ymax, 0:xmax] = image
    inverted = np.where(border == 0, 'B', 'A')

    for y in range(0, ymax, 2):
        sentence = ''
        if y % 10 == 0:
            sentence = str(y).rjust(3, ' ')
        else:
            sentence = '   '
        sentence += '▜'
        for x in range(0, xmax, 2):
            pixels = inverted[y:y + 2, x:x + 2]
            index = ''.join(pixels.flatten())
            sentence = sentence + constants.PATTERN.get(index)
        print(sentence)
    sentence = '    '
    for x in range(0, xmax, 2):
        sentence += '▛'
    print(sentence)