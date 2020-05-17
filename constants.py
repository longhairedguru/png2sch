# -*- coding: utf-8 -*-

INPUT = 0
OUTPUT = 1
BIDIR = 2
INVERTER = 8
TRIBUF = 9
AND = 16
NAND = 17
NAND5 = 18
NAND6 = 19
NAND7 = 20
OR = 24
NOR = 25
NOR5 = 26
NOR6 = 27
NOR8 = 28
XOR = 32
XNOR = 33
DTFF = 40
DTFF3 = 41
DFF2 = 42
MUX = 48
MUXI = 49
AOI_MUX2 = 50
AOI_MUX3 = 51
AOI_MUX4 = 52
AOI_MUX6 = 53
OA = 56
AO = 57
AOI = 58
JUNC_E = 64
JUNC_W = 65
JUNC_N = 66
JUNC_S = 67
FULL_JUNC = 68
LATCH = 72
COUNT = 80
HALF_ADDER = 88
FULL_ADDER = 89
RAM = 96
SPECIAL = -1

ZOO = [ [INPUT, 'io.png'],
        [BIDIR, 'bidir_io.png'],
        [INVERTER, 'inverter.png'],
        [TRIBUF, 'tribuf.png'],
        [AND, 'and.png'],
        [OR, 'or.png'],
        [NAND, 'nand.png'],
        [NAND5, 'nand5.png'],
        [NAND6, 'nand6.png'],
        [NAND7, 'nand7.png'],
        [NOR, 'nor.png'],
        [NOR5, 'nor5.png'],
        [NOR6, 'nor6.png'],
        [NOR8, 'nor8.png'],
        [XOR, 'xor.png'],
        [XNOR, 'xnor.png'],
        [DTFF, 'dtff.png'],
        [DTFF3, 'dtff3.png'],
        [DFF2, 'dff2.png'],
        [MUX, 'mux.png'],
        [MUXI, 'muxi.png'],
        [AOI_MUX2, 'aoi_mux2.png'],
        [AOI_MUX3, 'aoi_mux3.png'],
        [AOI_MUX4, 'aoi_mux4.png'],
        [AOI_MUX6, 'aoi_mux6.png'],
        [OA, 'oa.png'],
        [AO, 'ao.png'],
        [AOI, 'aoi.png'],
        [JUNC_E, 'junc_e.png'],
        [JUNC_W, 'junc_w.png'],
        [JUNC_N, 'junc_n.png'],
        [JUNC_S, 'junc_s.png'],
        [LATCH, 'latch.png'],
        [COUNT, 'count.png'],
        [HALF_ADDER, 'half_adder.png'],
        [FULL_ADDER, 'full_adder.png'],
        [RAM, 'spram128.png'],
       ]

DIRECTIONS = { 'n': [(0, -1), 'e', 'w'], 'e': [(1, 0), 'n', 's'], 's': [(0, 1), 'e', 'w'], 'w': [(-1, 0), 'n', 's']}

GATE_DICT = {'GMIGEFEEEEEEFGGD': 'C', 'SSEEEEEEEEEC': 'F', 'SSCCCCCCCCCCSS': 'H', 'SSDDDEGHGHHHFDB': 'K', 'CFGGGGGDGGGGGFC': 'V', 'SSDFGGGGDGGGGFDSS': 'M', 'SSEEEEEFHIKJMGB': 'R', 'SSEEEEEEEEGGIF': 'P', 'SSDDDDDDDDDDSS': 'N', 'BCDDEEEKKEEEEECB': 'Y', 'SSGGGGGGGGGGGE': 'E', 'OQDCCCCCCCCDQO': 'U', 'CFHHHIIHIIHHGE': 'Z', 'CFGGHIHEHIHGGFC': 'A', 'DFDCCCCCRP': 'J', 'BDFHIHHHDHHHIHFDB': 'X', 'SSGGGGGGGGJLLE': 'B', 'CCCCCCSSCCCCCC': 'T', 'GKIFEGEEEEEGEGIKG': 'O', 'CIJHHGHHGGGHIKG': 'S', 'SSEEEEEEEEEGHMI': 'D', 'CFHHHGDGHHHGCGHHHGDGIHIFC': 'W', 'GKIFEFEEEGGHGILI': 'G', 'SSCCCCCCCCC': 'L'}

PAD_DICT = {'FEDDDEF': '8', 'MCCCCCCCCG': 'D', 'MDDDDDDDC': 'E', 'MCCDCCDCCCM': 'M', 'FEDDDDI': '9', 'GCCCCDDDDD': 'G', 'MCCCCDEDE': 'R', 'M': 'I', 'CCBBBBK': 'J', 'MBBBBBBBM': 'H', 'MDDDDDDFF': 'B', 'EDDDDDDDE': 'S', 'MBBBCCDDC': 'K', 'BBEFDDB': '7', 'MBCBCBCBM': 'N', 'BBBM': '1', 'BDEDEDEDC': 'Z', 'BCCECBCECCB': 'X', 'MCCCCCCCD': 'P', 'CDEDEDC': 'z', 'BDDDCDDDBDDDCDDDB': 'W', 'ICCCCCI': '0', 'BCBCGCBCB': 'Y', 'BBBBMBBBB': 'T', 'MBBBBBB': 'L', 'IDDDDDG': '6', 'CCCEDCDECCC': 'A', 'CDDCCCDDC': 'V', 'CDDDDFE': '2', 'GCCCCCCCCG': 'O', 'CCDDCMBB': '4', 'MCCCCCCB': 'F', 'GCCCCCCCCC': 'C', 'DCDDEFD': '3', 'EFDDDDF': '5', 'GCCCCDDCEI': 'Q', 'KBBBBBBBK': 'U', 'BBBBBBBBB': '_'}

ALLOWED_GATE = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z']

ALLOWED_PAD = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','0','1','2','3','4','5','6','7','8','9','z']

ALLOWED_KINDS = ['sch', 'json']

# http://www.fileformat.info/info/charset/UTF-8/list.htm?start=8192
# ▀	UPPER HALF BLOCK (U+2580)	e29680
# ▄	LOWER HALF BLOCK (U+2584)	e29684
# █	FULL BLOCK (U+2588)	e29688
# ▌	LEFT HALF BLOCK (U+258C)	e2968c
# ▐	RIGHT HALF BLOCK (U+2590)	e29690
# ▖	QUADRANT LOWER LEFT (U+2596)	e29696
# ▗	QUADRANT LOWER RIGHT (U+2597)	e29697
# ▘	QUADRANT UPPER LEFT (U+2598)	e29698
# ▙	QUADRANT UPPER LEFT AND LOWER LEFT AND LOWER RIGHT (U+2599)	e29699
# ▚	QUADRANT UPPER LEFT AND LOWER RIGHT (U+259A)	e2969a
# ▛	QUADRANT UPPER LEFT AND UPPER RIGHT AND LOWER LEFT (U+259B)	e2969b
# ▜	QUADRANT UPPER LEFT AND UPPER RIGHT AND LOWER RIGHT (U+259C)	e2969c
# ▝	QUADRANT UPPER RIGHT (U+259D)	e2969d
# ▞	QUADRANT UPPER RIGHT AND LOWER LEFT (U+259E)	e2969e
# ▟	QUADRANT UPPER RIGHT AND LOWER LEFT AND LOWER RIGHT (U+259F)	e2969f

PATTERN = {'AAAA': ' ', 'BBAA': '▀', 'AABB': '▄', 'BBBB': '█', 'BABA': '▌', 'ABAB': '▐', 'AABA': '▖', 'AAAB': '▗', 'BAAA': '▘', 'BABB': '▙', 'BAAB': '▚', 'BBBA': '▛', 'BBAB': '▜', 'ABAA': '▝', 'ABBA': '▞', 'ABBB': '▟'}
