import pytesseract
import cv2
import numpy as np

import constants
import shape as sp


alphabet = cv2.imread('zoo/alphabet_pad.png')
img_gray = cv2.cvtColor(alphabet, cv2.COLOR_BGR2GRAY)
(h, w) = img_gray.shape[:2]

total = np.sum((img_gray == 0), axis = 0)

print(total)

textHash = ''

for value in total:
    textHash = textHash + chr(ord('A') + value)

print(textHash)

dict = {}

for i in range(len(constants.ALLOWED_PAD)):
    startPos = i * 30
    endPos = textHash.find('A', startPos)
    letterHash = None

    if endPos == startPos: # not found?
        continue
    elif endPos == -1: # end of string
        letterHash = textHash[startPos:]
    else:
        letterHash = textHash[startPos:endPos]

    print({letterHash: constants.ALLOWED_PAD[i]})
    dict.update({letterHash: constants.ALLOWED_PAD[i]})

print(dict)