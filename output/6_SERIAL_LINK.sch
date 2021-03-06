EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "6_SERIAL_LINK"
Date ""
Rev ""
Comp ""
Comment1 "Converted from 6_SERIAL_LINK.png"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 5400  900  0    50   Input ~ 0
A7
Text GLabel 5400  950  0    50   Input ~ 0
A6
Text GLabel 5400  1025  0    50   Input ~ 0
A5
Text GLabel 6200  1025  2    50   Output ~ 0
A00_07
Text GLabel 5400  1075  0    50   Input ~ 0
A4
Text GLabel 5400  1125  0    50   Input ~ 0
A3
Text GLabel 7700  1200  0    50   Input ~ 0
/SER_TICK
Text GLabel 9400  1250  0    50   Input ~ 0
SANO
Text GLabel 9400  1300  0    50   Input ~ 0
CPU_RD
Text GLabel 5400  1425  0    50   Input ~ 0
A2
Text GLabel 9400  1425  0    50   Input ~ 0
TOLA__/A1
Text GLabel 6850  1475  2    50   Output ~ 0
SANO
Text GLabel 9400  1475  0    50   Input ~ 0
A0
Text GLabel 6000  1650  0    50   Input ~ 0
FFXX
Text GLabel 8475  1700  0    50   Input ~ 0
SIN_IN
Text GLabel 9550  1700  2    50   Output ~ 0
VYPO
Text GLabel 6725  1775  0    50   Input ~ 0
CPU_WR
Text GLabel 6725  1875  0    50   Input ~ 0
TOLA__/A1
Text GLabel 6725  1950  0    50   Input ~ 0
A0
Text GLabel 7325  2050  0    50   Input ~ 0
/RESET2
Text GLabel 7325  2175  0    50   Input ~ 0
D0
Text GLabel 10575  2175  2    50   Output ~ 0
D0
Text GLabel 7325  2750  0    50   Input ~ 0
D1
Text GLabel 10575  2750  2    50   Output ~ 0
D1
Text GLabel 7325  3325  0    50   Input ~ 0
D2
Text GLabel 10575  3325  2    50   Output ~ 0
D2
Text GLabel 3750  3600  0    50   Input ~ 0
SCK_DIR
Text GLabel 7325  3900  0    50   Input ~ 0
D3
Text GLabel 10575  3900  2    50   Output ~ 0
D3
Text GLabel 1600  4175  0    50   Input ~ 0
16384Hz
Text GLabel 4325  4300  2    50   Output ~ 0
/SER_TICK
Text GLabel 950  4350  0    50   Input ~ 0
TOVY__/A0
Text GLabel 950  4425  0    50   Input ~ 0
A1
Text GLabel 2550  4425  0    50   Input ~ 0
SCK_IN
Text GLabel 7325  4475  0    50   Input ~ 0
D4
Text GLabel 10575  4475  2    50   Output ~ 0
D4
Text GLabel 950  4525  0    50   Input ~ 0
CPU_WR
Text GLabel 950  4600  0    50   Input ~ 0
SANO
Text GLabel 950  4925  0    50   Input ~ 0
SANO
Text GLabel 950  5000  0    50   Input ~ 0
CPU_RD
Text GLabel 7325  5050  0    50   Input ~ 0
D5
Text GLabel 10575  5050  2    50   Output ~ 0
D5
Text GLabel 950  5100  0    50   Input ~ 0
A1
Text GLabel 950  5175  0    50   Input ~ 0
TOVY__/A0
Text GLabel 1550  5575  0    50   Input ~ 0
D7
Text GLabel 3350  5575  2    50   Output ~ 0
D7
Text GLabel 7325  5625  0    50   Input ~ 0
D6
Text GLabel 10575  5625  2    50   Output ~ 0
D6
Text GLabel 2525  5850  2    50   Output ~ 0
SCK_DIR
Text GLabel 1550  5975  0    50   Input ~ 0
/RESET2
Text GLabel 1550  6025  0    50   Input ~ 0
D0
Text GLabel 3350  6025  2    50   Output ~ 0
D0
Text GLabel 4650  6150  2    50   Output ~ 0
INT_SERIAL
Text GLabel 7325  6200  0    50   Input ~ 0
D7
Text GLabel 10575  6200  2    50   Output ~ 0
D7
Text GLabel 4950  6600  0    50   Input ~ 0
/RESET2
Text GLabel 10050  6650  0    50   Input ~ 0
/SER_TICK
Text GLabel 10800  6650  2    50   Output ~ 0
SER_OUT
Text GLabel 10050  6775  0    50   Input ~ 0
/RESET2
$Comp
L DMG-CPU:inverter EPYT
U 1 1 5EB90103
P 7975 1200
F 0 "EPYT" H 7905 1292 25  0000 C CNN
F 1 "inverter" H 7965 1103 25  0001 C CNN
F 2 "" H 7975 1200 25  0001 C CNN
F 3 "" H 7975 1200 25  0001 C CNN
	1    7975 1200
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:inverter DEHO
U 1 1 5EB90103
P 8425 1200
F 0 "DEHO" H 8355 1292 25  0000 C CNN
F 1 "inverter" H 8415 1103 25  0001 C CNN
F 2 "" H 8425 1200 25  0001 C CNN
F 3 "" H 8425 1200 25  0001 C CNN
	1    8425 1200
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:inverter DAWE
U 1 1 5EB90103
P 8800 1200
F 0 "DAWE" H 8730 1292 25  0000 C CNN
F 1 "inverter" H 8790 1103 25  0001 C CNN
F 2 "" H 8800 1200 25  0001 C CNN
F 3 "" H 8800 1200 25  0001 C CNN
	1    8800 1200
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:inverter SEFY
U 1 1 5EB90103
P 5675 1425
F 0 "SEFY" H 5605 1517 25  0000 C CNN
F 1 "inverter" H 5665 1328 25  0001 C CNN
F 2 "" H 5675 1425 25  0001 C CNN
F 3 "" H 5675 1425 25  0001 C CNN
	1    5675 1425
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:inverter CAGE
U 1 1 5EB90103
P 8750 1700
F 0 "CAGE" H 8680 1792 25  0000 C CNN
F 1 "inverter" H 8740 1603 25  0001 C CNN
F 2 "" H 8750 1700 25  0001 C CNN
F 3 "" H 8750 1700 25  0001 C CNN
	1    8750 1700
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:inverter VYPO
U 1 1 5EB90103
P 9300 1700
F 0 "VYPO" H 9230 1792 25  0000 C CNN
F 1 "inverter" H 9290 1603 25  0001 C CNN
F 2 "" H 9300 1700 25  0001 C CNN
F 3 "" H 9300 1700 25  0001 C CNN
	1    9300 1700
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:inverter DAKU
U 1 1 5EB90103
P 7750 1825
F 0 "DAKU" H 7680 1917 25  0000 C CNN
F 1 "inverter" H 7740 1728 25  0001 C CNN
F 2 "" H 7750 1825 25  0001 C CNN
F 3 "" H 7750 1825 25  0001 C CNN
	1    7750 1825
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:tribuffer CUGY
U 1 1 5EB90103
P 10325 2175
F 0 "CUGY" H 10258 2078 25  0000 C CNN
F 1 "tribuffer" H 10323 2043 25  0001 C CNN
F 2 "" H 10325 2275 25  0001 C CNN
F 3 "" H 10325 2275 25  0001 C CNN
	1    10325 2175
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:tribuffer DUDE
U 1 1 5EB90103
P 10325 2750
F 0 "DUDE" H 10258 2653 25  0000 C CNN
F 1 "tribuffer" H 10323 2618 25  0001 C CNN
F 2 "" H 10325 2850 25  0001 C CNN
F 3 "" H 10325 2850 25  0001 C CNN
	1    10325 2750
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:tribuffer DETU
U 1 1 5EB90103
P 10325 3325
F 0 "DETU" H 10258 3228 25  0000 C CNN
F 1 "tribuffer" H 10323 3193 25  0001 C CNN
F 2 "" H 10325 3425 25  0001 C CNN
F 3 "" H 10325 3425 25  0001 C CNN
	1    10325 3325
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:inverter JAGO
U 1 1 5EB90103
P 4150 3900
F 0 "JAGO" H 4080 3992 25  0000 C CNN
F 1 "inverter" H 4140 3803 25  0001 C CNN
F 2 "" H 4150 3900 25  0001 C CNN
F 3 "" H 4150 3900 25  0001 C CNN
	1    4150 3900
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:tribuffer DASO
U 1 1 5EB90103
P 10325 3900
F 0 "DASO" H 10258 3803 25  0000 C CNN
F 1 "tribuffer" H 10323 3768 25  0001 C CNN
F 2 "" H 10325 4000 25  0001 C CNN
F 3 "" H 10325 4000 25  0001 C CNN
	1    10325 3900
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:inverter EDYL
U 1 1 5EB90103
P 4075 4300
F 0 "EDYL" H 4005 4392 25  0000 C CNN
F 1 "inverter" H 4065 4203 25  0001 C CNN
F 2 "" H 4075 4300 25  0001 C CNN
F 3 "" H 4075 4300 25  0001 C CNN
	1    4075 4300
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:tribuffer DAME
U 1 1 5EB90103
P 10325 4475
F 0 "DAME" H 10258 4378 25  0000 C CNN
F 1 "tribuffer" H 10323 4343 25  0001 C CNN
F 2 "" H 10325 4575 25  0001 C CNN
F 3 "" H 10325 4575 25  0001 C CNN
	1    10325 4475
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:tribuffer EVOK
U 1 1 5EB90103
P 10325 5050
F 0 "EVOK" H 10258 4953 25  0000 C CNN
F 1 "tribuffer" H 10323 4918 25  0001 C CNN
F 2 "" H 10325 5150 25  0001 C CNN
F 3 "" H 10325 5150 25  0001 C CNN
	1    10325 5050
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:tribuffer ELUV
U 1 1 5EB90103
P 3100 5575
F 0 "ELUV" H 3033 5478 25  0000 C CNN
F 1 "tribuffer" H 3098 5443 25  0001 C CNN
F 2 "" H 3100 5675 25  0001 C CNN
F 3 "" H 3100 5675 25  0001 C CNN
	1    3100 5575
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:tribuffer EFAB
U 1 1 5EB90103
P 10325 5625
F 0 "EFAB" H 10258 5528 25  0000 C CNN
F 1 "tribuffer" H 10323 5493 25  0001 C CNN
F 2 "" H 10325 5725 25  0001 C CNN
F 3 "" H 10325 5725 25  0001 C CNN
	1    10325 5625
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:tribuffer CORE
U 1 1 5EB90103
P 3100 6025
F 0 "CORE" H 3033 5928 25  0000 C CNN
F 1 "tribuffer" H 3098 5893 25  0001 C CNN
F 2 "" H 3100 6125 25  0001 C CNN
F 3 "" H 3100 6125 25  0001 C CNN
	1    3100 6025
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:tribuffer ETAK
U 1 1 5EB90103
P 10325 6200
F 0 "ETAK" H 10258 6103 25  0000 C CNN
F 1 "tribuffer" H 10323 6068 25  0001 C CNN
F 2 "" H 10325 6300 25  0001 C CNN
F 3 "" H 10325 6300 25  0001 C CNN
	1    10325 6200
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:inverter COBA
U 1 1 5EB90103
P 4800 6375
F 0 "COBA" H 4730 6467 25  0000 C CNN
F 1 "inverter" H 4790 6278 25  0001 C CNN
F 2 "" H 4800 6375 25  0001 C CNN
F 3 "" H 4800 6375 25  0001 C CNN
	1    4800 6375
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:and_4 UFEG
U 1 1 5EB90103
P 9775 1375
F 0 "UFEG" H 9705 1480 25  0000 C CNN
F 1 "and_4" H 9750 1268 25  0001 C CNN
F 2 "" H 9775 1375 25  0001 C CNN
F 3 "" H 9775 1375 25  0001 C CNN
	1    9775 1375
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:and_3 SANO
U 1 1 5EB90103
P 6425 1475
F 0 "SANO" H 6355 1567 25  0000 C CNN
F 1 "and_3" H 6400 1380 25  0001 C CNN
F 2 "" H 6425 1475 25  0001 C CNN
F 3 "" H 6425 1475 25  0001 C CNN
	1    6425 1475
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:and_4 UCOM
U 1 1 5EB90103
P 1325 5050
F 0 "UCOM" H 1255 5155 25  0000 C CNN
F 1 "and_4" H 1300 4943 25  0001 C CNN
F 2 "" H 1325 5050 25  0001 C CNN
F 3 "" H 1325 5050 25  0001 C CNN
	1    1325 5050
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:and_2 CABY
U 1 1 5EB90103
P 5375 6425
F 0 "CABY" H 5305 6517 25  0000 C CNN
F 1 "and_2" H 5350 6330 25  0001 C CNN
F 2 "" H 5375 6425 25  0001 C CNN
F 3 "" H 5375 6425 25  0001 C CNN
	1    5375 6425
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:and_2 CARO
U 1 1 5EB90103
P 2100 6500
F 0 "CARO" H 2030 6592 25  0000 C CNN
F 1 "and_2" H 2075 6405 25  0001 C CNN
F 2 "" H 2100 6500 25  0001 C CNN
F 3 "" H 2100 6500 25  0001 C CNN
	1    2100 6500
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:or_2 DAWA
U 1 1 5EB90103
P 3525 4650
F 0 "DAWA" H 3455 4745 25  0000 C CNN
F 1 "or_2" H 3485 4553 25  0001 C CNN
F 2 "" H 3525 4650 25  0001 C CNN
F 3 "" H 3525 4650 25  0001 C CNN
	1    3525 4650
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:nand_4 URYS
U 1 1 5EB90103
P 7100 1825
F 0 "URYS" H 7030 1930 25  0000 C CNN
F 1 "nand_4" H 7085 1718 25  0001 C CNN
F 2 "" H 7100 1825 25  0001 C CNN
F 3 "" H 7100 1825 25  0001 C CNN
	1    7100 1825
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:nand_2 CUFU
U 1 1 5EB90103
P 8525 2225
F 0 "CUFU" H 8455 2317 25  0000 C CNN
F 1 "nand_2" H 8510 2130 25  0001 C CNN
F 2 "" H 8525 2225 25  0001 C CNN
F 3 "" H 8525 2225 25  0001 C CNN
	1    8525 2225
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:nand_2 DOCU
U 1 1 5EB90103
P 8525 2800
F 0 "DOCU" H 8455 2892 25  0000 C CNN
F 1 "nand_2" H 8510 2705 25  0001 C CNN
F 2 "" H 8525 2800 25  0001 C CNN
F 3 "" H 8525 2800 25  0001 C CNN
	1    8525 2800
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:nand_2 DELA
U 1 1 5EB90103
P 8525 3375
F 0 "DELA" H 8455 3467 25  0000 C CNN
F 1 "nand_2" H 8510 3280 25  0001 C CNN
F 2 "" H 8525 3375 25  0001 C CNN
F 3 "" H 8525 3375 25  0001 C CNN
	1    8525 3375
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:nand_2 KEXU
U 1 1 5EB90103
P 4700 3550
F 0 "KEXU" H 4630 3642 25  0000 C CNN
F 1 "nand_2" H 4685 3455 25  0001 C CNN
F 2 "" H 4700 3550 25  0001 C CNN
F 3 "" H 4700 3550 25  0001 C CNN
	1    4700 3550
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:nand_2 DYGE
U 1 1 5EB90103
P 8525 3950
F 0 "DYGE" H 8455 4042 25  0000 C CNN
F 1 "nand_2" H 8510 3855 25  0001 C CNN
F 2 "" H 8525 3950 25  0001 C CNN
F 3 "" H 8525 3950 25  0001 C CNN
	1    8525 3950
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:nand_4 UWAM
U 1 1 5EB90103
P 1350 4475
F 0 "UWAM" H 1280 4580 25  0000 C CNN
F 1 "nand_4" H 1335 4368 25  0001 C CNN
F 2 "" H 1350 4475 25  0001 C CNN
F 3 "" H 1350 4475 25  0001 C CNN
	1    1350 4475
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:nand_2 DOLA
U 1 1 5EB90103
P 8525 4525
F 0 "DOLA" H 8455 4617 25  0000 C CNN
F 1 "nand_2" H 8510 4430 25  0001 C CNN
F 2 "" H 8525 4525 25  0001 C CNN
F 3 "" H 8525 4525 25  0001 C CNN
	1    8525 4525
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:nand_2 ELOK
U 1 1 5EB90103
P 8525 5100
F 0 "ELOK" H 8455 5192 25  0000 C CNN
F 1 "nand_2" H 8510 5005 25  0001 C CNN
F 2 "" H 8525 5100 25  0001 C CNN
F 3 "" H 8525 5100 25  0001 C CNN
	1    8525 5100
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:nand_2 EDEL
U 1 1 5EB90103
P 8525 5675
F 0 "EDEL" H 8455 5767 25  0000 C CNN
F 1 "nand_2" H 8510 5580 25  0001 C CNN
F 2 "" H 8525 5675 25  0001 C CNN
F 3 "" H 8525 5675 25  0001 C CNN
	1    8525 5675
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:nand_2 EFEF
U 1 1 5EB90103
P 8525 6250
F 0 "EFEF" H 8455 6342 25  0000 C CNN
F 1 "nand_2" H 8510 6155 25  0001 C CNN
F 2 "" H 8525 6250 25  0001 C CNN
F 3 "" H 8525 6250 25  0001 C CNN
	1    8525 6250
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:nor_2 KUJO
U 1 1 5EB90103
P 4700 3950
F 0 "KUJO" H 4630 4042 25  0000 C CNN
F 1 "nor_2" H 4670 3855 25  0001 C CNN
F 2 "" H 4700 3950 25  0001 C CNN
F 3 "" H 4700 3950 25  0001 C CNN
	1    4700 3950
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:nor_5 SARE
U 1 1 5EB90103
P 5775 1025
F 0 "SARE" H 5725 1125 25  0000 C CNN
F 1 "nor_5" H 5763 925 25  0001 C CNN
F 2 "" H 5775 1025 25  0001 C CNN
F 3 "" H 5775 1025 25  0001 C CNN
	1    5775 1025
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:dtff COTY
U 1 1 5EB90103
P 2050 4450
F 0 "COTY" H 1980 4555 25  0000 C CNN
F 1 "dtff" H 2025 4343 25  0001 C CNN
F 2 "" H 2050 4450 25  0001 C CNN
F 3 "" H 2050 4450 25  0001 C CNN
	1    2050 4450
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:dtff CAFA
U 1 1 5EB90103
P 4200 4725
F 0 "CAFA" H 4130 4830 25  0000 C CNN
F 1 "dtff" H 4175 4618 25  0001 C CNN
F 2 "" H 4200 4725 25  0001 C CNN
F 3 "" H 4200 4725 25  0001 C CNN
	1    4200 4725
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:dtff CYLO
U 1 1 5EB90103
P 4200 5300
F 0 "CYLO" H 4130 5405 25  0000 C CNN
F 1 "dtff" H 4175 5193 25  0001 C CNN
F 2 "" H 4200 5300 25  0001 C CNN
F 3 "" H 4200 5300 25  0001 C CNN
	1    4200 5300
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:dtff ETAF
U 1 1 5EB90103
P 2100 5475
F 0 "ETAF" H 2030 5580 25  0000 C CNN
F 1 "dtff" H 2075 5368 25  0001 C CNN
F 2 "" H 2100 5475 25  0001 C CNN
F 3 "" H 2100 5475 25  0001 C CNN
	1    2100 5475
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:dtff CYDE
U 1 1 5EB90103
P 4200 5875
F 0 "CYDE" H 4130 5980 25  0000 C CNN
F 1 "dtff" H 4175 5768 25  0001 C CNN
F 2 "" H 4200 5875 25  0001 C CNN
F 3 "" H 4200 5875 25  0001 C CNN
	1    4200 5875
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:dtff CULY
U 1 1 5EB90103
P 2100 5950
F 0 "CULY" H 2030 6055 25  0000 C CNN
F 1 "dtff" H 2075 5843 25  0001 C CNN
F 2 "" H 2100 5950 25  0001 C CNN
F 3 "" H 2100 5950 25  0001 C CNN
	1    2100 5950
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:dtff CALY
U 1 1 5EB90103
P 4200 6450
F 0 "CALY" H 4130 6555 25  0000 C CNN
F 1 "dtff" H 4175 6343 25  0001 C CNN
F 2 "" H 4200 6450 25  0001 C CNN
F 3 "" H 4200 6450 25  0001 C CNN
	1    4200 6450
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:dtff ELYS
U 1 1 5EB90103
P 10450 6750
F 0 "ELYS" H 10380 6855 25  0000 C CNN
F 1 "dtff" H 10425 6643 25  0001 C CNN
F 2 "" H 10450 6750 25  0001 C CNN
F 3 "" H 10450 6750 25  0001 C CNN
	1    10450 6750
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:dtff3 CUBA
U 1 1 5EB90103
P 9375 2250
F 0 "CUBA" H 9305 2355 25  0000 C CNN
F 1 "dtff3" H 9350 2143 25  0001 C CNN
F 2 "" H 9375 2250 25  0001 C CNN
F 3 "" H 9375 2250 25  0001 C CNN
	1    9375 2250
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:dtff3 DEGU
U 1 1 5EB90103
P 9375 2825
F 0 "DEGU" H 9305 2930 25  0000 C CNN
F 1 "dtff3" H 9350 2718 25  0001 C CNN
F 2 "" H 9375 2825 25  0001 C CNN
F 3 "" H 9375 2825 25  0001 C CNN
	1    9375 2825
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:dtff3 DYRA
U 1 1 5EB90103
P 9375 3400
F 0 "DYRA" H 9305 3505 25  0000 C CNN
F 1 "dtff3" H 9350 3293 25  0001 C CNN
F 2 "" H 9375 3400 25  0001 C CNN
F 3 "" H 9375 3400 25  0001 C CNN
	1    9375 3400
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:dtff3 DOJO
U 1 1 5EB90103
P 9375 3975
F 0 "DOJO" H 9305 4080 25  0000 C CNN
F 1 "dtff3" H 9350 3868 25  0001 C CNN
F 2 "" H 9375 3975 25  0001 C CNN
F 3 "" H 9375 3975 25  0001 C CNN
	1    9375 3975
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:dtff3 DOVU
U 1 1 5EB90103
P 9375 4550
F 0 "DOVU" H 9305 4655 25  0000 C CNN
F 1 "dtff3" H 9350 4443 25  0001 C CNN
F 2 "" H 9375 4550 25  0001 C CNN
F 3 "" H 9375 4550 25  0001 C CNN
	1    9375 4550
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:dtff3 EJAB
U 1 1 5EB90103
P 9375 5125
F 0 "EJAB" H 9305 5230 25  0000 C CNN
F 1 "dtff3" H 9350 5018 25  0001 C CNN
F 2 "" H 9375 5125 25  0001 C CNN
F 3 "" H 9375 5125 25  0001 C CNN
	1    9375 5125
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:dtff3 EROD
U 1 1 5EB90103
P 9375 5700
F 0 "EROD" H 9305 5805 25  0000 C CNN
F 1 "dtff3" H 9350 5593 25  0001 C CNN
F 2 "" H 9375 5700 25  0001 C CNN
F 3 "" H 9375 5700 25  0001 C CNN
	1    9375 5700
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:dtff3 EDER
U 1 1 5EB90103
P 9375 6275
F 0 "EDER" H 9305 6380 25  0000 C CNN
F 1 "dtff3" H 9350 6168 25  0001 C CNN
F 2 "" H 9375 6275 25  0001 C CNN
F 3 "" H 9375 6275 25  0001 C CNN
	1    9375 6275
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:mux_2i CAVE
U 1 1 5EB90103
P 2900 4450
F 0 "CAVE" H 2830 4555 25  0000 C CNN
F 1 "mux_2i" H 2875 4343 25  0001 C CNN
F 2 "" H 2900 4450 25  0001 C CNN
F 3 "" H 2900 4450 25  0001 C CNN
	1    2900 4450
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:oa COHY
U 1 1 5EB90103
P 7850 2525
F 0 "COHY" H 7780 2630 25  0000 C CNN
F 1 "oa" H 7825 2418 25  0001 C CNN
F 2 "" H 7850 2525 25  0001 C CNN
F 3 "" H 7850 2525 25  0001 C CNN
	1    7850 2525
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:oa DUMO
U 1 1 5EB90103
P 7850 3100
F 0 "DUMO" H 7780 3205 25  0000 C CNN
F 1 "oa" H 7825 2993 25  0001 C CNN
F 2 "" H 7850 3100 25  0001 C CNN
F 3 "" H 7850 3100 25  0001 C CNN
	1    7850 3100
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:oa DYBO
U 1 1 5EB90103
P 7850 3675
F 0 "DYBO" H 7780 3780 25  0000 C CNN
F 1 "oa" H 7825 3568 25  0001 C CNN
F 2 "" H 7850 3675 25  0001 C CNN
F 3 "" H 7850 3675 25  0001 C CNN
	1    7850 3675
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:oa DAJU
U 1 1 5EB90103
P 7850 4250
F 0 "DAJU" H 7780 4355 25  0000 C CNN
F 1 "oa" H 7825 4143 25  0001 C CNN
F 2 "" H 7850 4250 25  0001 C CNN
F 3 "" H 7850 4250 25  0001 C CNN
	1    7850 4250
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:oa DYLY
U 1 1 5EB90103
P 7850 4825
F 0 "DYLY" H 7780 4930 25  0000 C CNN
F 1 "oa" H 7825 4718 25  0001 C CNN
F 2 "" H 7850 4825 25  0001 C CNN
F 3 "" H 7850 4825 25  0001 C CNN
	1    7850 4825
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:oa EHUJ
U 1 1 5EB90103
P 7850 5400
F 0 "EHUJ" H 7780 5505 25  0000 C CNN
F 1 "oa" H 7825 5293 25  0001 C CNN
F 2 "" H 7850 5400 25  0001 C CNN
F 3 "" H 7850 5400 25  0001 C CNN
	1    7850 5400
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:oa EFAK
U 1 1 5EB90103
P 7850 5975
F 0 "EFAK" H 7780 6080 25  0000 C CNN
F 1 "oa" H 7825 5868 25  0001 C CNN
F 2 "" H 7850 5975 25  0001 C CNN
F 3 "" H 7850 5975 25  0001 C CNN
	1    7850 5975
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:oa EGUV
U 1 1 5EB90103
P 7850 6550
F 0 "EGUV" H 7780 6655 25  0000 C CNN
F 1 "oa" H 7825 6443 25  0001 C CNN
F 2 "" H 7850 6550 25  0001 C CNN
F 3 "" H 7850 6550 25  0001 C CNN
	1    7850 6550
	1    0    0    -1
$EndComp
Connection ~ 10100 2000
Connection ~ 8175 2275
Connection ~ 9000 2350
Connection ~ 7425 2450
Connection ~ 7475 2575
Connection ~ 10100 2575
Connection ~ 8175 2875
Connection ~ 9000 2925
Connection ~ 7425 3025
Connection ~ 7475 3150
Connection ~ 10100 3150
Connection ~ 8175 3450
Connection ~ 9000 3500
Connection ~ 7425 3600
Connection ~ 7475 3725
Connection ~ 10100 3725
Connection ~ 8175 4025
Connection ~ 7425 4200
Connection ~ 3850 4300
Connection ~ 7475 4300
Connection ~ 10100 4300
Connection ~ 8175 4600
Connection ~ 8950 4650
Connection ~ 7425 4775
Connection ~ 7475 4875
Connection ~ 10100 4875
Connection ~ 3850 5000
Connection ~ 8175 5175
Connection ~ 8950 5225
Connection ~ 3800 5350
Connection ~ 7425 5350
Connection ~ 1650 5400
Connection ~ 2875 5400
Connection ~ 7475 5450
Connection ~ 10100 5450
Connection ~ 3850 5575
Connection ~ 8175 5750
Connection ~ 8950 5800
Connection ~ 1650 5850
Connection ~ 3800 5925
Connection ~ 7425 5925
Connection ~ 7475 6025
Connection ~ 3850 6150
Connection ~ 3850 4650
Connection ~ 2475 5575
Connection ~ 2425 5850
Connection ~ 4550 6375
Connection ~ 3800 6500
Connection ~ 6100 1025
Connection ~ 8175 1200
Connection ~ 6750 1475
Connection ~ 9050 1700
Connection ~ 7400 1825
Connection ~ 7525 2175
Connection ~ 7525 2750
Connection ~ 7525 3325
Connection ~ 4350 3500
Connection ~ 3900 3600
Connection ~ 7525 3900
Connection ~ 1650 4475
Connection ~ 7525 4475
Connection ~ 7525 5050
Connection ~ 7525 5625
Connection ~ 1700 5975
Connection ~ 7525 6200
Wire Wire Line
	8900 1700 9050 1700
Wire Wire Line
	3850 4650 3850 4300
Wire Wire Line
	7475 3725 7700 3750
Wire Wire Line
	9225 2900 9000 2925
Wire Wire Line
	7525 2175 8375 2175
Wire Wire Line
	10100 2000 9925 1375
Wire Wire Line
	1200 4450 950 4425
Wire Wire Line
	8000 2450 9225 2275
Wire Wire Line
	2875 5400 3100 5475
Wire Wire Line
	7425 5925 7700 5900
Wire Wire Line
	7475 3150 7700 3175
Wire Wire Line
	7525 3900 7700 4225
Wire Wire Line
	7475 2575 7475 3150
Wire Wire Line
	8175 3450 8175 4025
Wire Wire Line
	3850 5575 4350 5375
Wire Wire Line
	9400 1300 9625 1350
Wire Wire Line
	1175 5025 950 5000
Wire Wire Line
	10300 6675 10050 6650
Wire Wire Line
	2875 5400 3100 5925
Wire Wire Line
	7325 4475 7525 4475
Wire Wire Line
	1950 6450 1650 5850
Wire Wire Line
	3800 6500 2250 6500
Wire Wire Line
	9225 3425 8000 3600
Wire Wire Line
	8575 1200 8650 1200
Wire Wire Line
	7475 4875 7475 4300
Wire Wire Line
	7700 6475 7425 5925
Wire Wire Line
	8675 2225 9225 2225
Wire Wire Line
	6750 1475 6850 1475
Wire Wire Line
	7525 4475 8375 4475
Wire Wire Line
	7700 5375 7525 5050
Wire Wire Line
	9225 6200 9525 5675
Wire Wire Line
	10175 5050 9525 5050
Wire Wire Line
	8950 5800 9225 6350
Wire Wire Line
	10475 5625 10575 5625
Wire Wire Line
	7475 3150 7475 2575
Wire Wire Line
	7425 4200 7700 4175
Wire Wire Line
	10100 4875 10100 5450
Wire Wire Line
	2250 5550 2475 5575
Wire Wire Line
	9000 2350 9000 2925
Wire Wire Line
	5400 1125 5625 1125
Wire Wire Line
	4650 6375 4550 6375
Wire Wire Line
	4050 5800 3850 5575
Wire Wire Line
	9550 1700 9450 1700
Wire Wire Line
	8175 2875 8375 2850
Wire Wire Line
	7475 3725 7475 3150
Wire Wire Line
	10575 5050 10475 5050
Wire Wire Line
	8375 3900 7525 3900
Wire Wire Line
	2750 4525 2425 5850
Wire Wire Line
	10325 2650 10100 2575
Wire Wire Line
	1650 5400 1650 4475
Wire Wire Line
	8675 5100 9225 5100
Wire Wire Line
	3900 3600 4550 3600
Wire Wire Line
	9150 1700 9050 1700
Wire Wire Line
	10100 3150 10325 3225
Wire Wire Line
	10100 5450 10325 6100
Wire Wire Line
	10100 4300 10325 4375
Wire Wire Line
	4550 6375 4650 6375
Wire Wire Line
	3375 4700 2475 5575
Wire Wire Line
	8375 4475 7525 4475
Wire Wire Line
	7425 4775 7700 4750
Wire Wire Line
	9400 1475 9625 1450
Wire Wire Line
	6950 1800 6725 1775
Wire Wire Line
	8175 1200 8950 4650
Wire Wire Line
	950 4925 1175 4975
Wire Wire Line
	9050 1700 8900 1700
Wire Wire Line
	2525 5850 2425 5850
Wire Wire Line
	9000 3500 9000 2925
Wire Wire Line
	9000 3500 9225 4050
Wire Wire Line
	7525 2175 7700 2500
Wire Wire Line
	3100 5475 2875 5400
Wire Wire Line
	10100 2000 10100 2575
Wire Wire Line
	7525 6200 8375 6200
Wire Wire Line
	7425 4200 7425 4775
Wire Wire Line
	10175 6200 9525 6200
Wire Wire Line
	7475 6025 7700 6625
Wire Wire Line
	8600 1700 8475 1700
Wire Wire Line
	9225 5625 9525 5100
Wire Wire Line
	4550 3600 3900 3600
Wire Wire Line
	9225 6350 8950 5800
Wire Wire Line
	10475 2175 10575 2175
Wire Wire Line
	7700 2600 7475 2575
Wire Wire Line
	7325 2050 7475 2575
Wire Wire Line
	8375 4575 8175 4600
Wire Wire Line
	3350 5575 3250 5575
Wire Wire Line
	8375 5625 7525 5625
Wire Wire Line
	7700 4325 7475 4300
Wire Wire Line
	10300 6825 9525 6250
Wire Wire Line
	4950 6600 5225 6475
Wire Wire Line
	3850 5575 4050 5375
Wire Wire Line
	7700 5475 7475 5450
Wire Wire Line
	1475 5050 2875 5400
Wire Wire Line
	2425 5850 2750 4525
Wire Wire Line
	9525 2750 10175 2750
Wire Wire Line
	7475 4875 7700 4900
Wire Wire Line
	3375 4600 3050 4375
Wire Wire Line
	4050 5225 3850 5000
Wire Wire Line
	9225 3325 9525 2800
Wire Wire Line
	6750 1475 6950 1750
Wire Wire Line
	7475 5450 7700 5475
Wire Wire Line
	8175 5175 8375 5150
Wire Wire Line
	7525 4475 7700 4800
Wire Wire Line
	9225 2225 8675 2225
Wire Wire Line
	5400 900 5625 925
Wire Wire Line
	1900 4375 1600 4175
Wire Wire Line
	5625 975 5400 950
Wire Wire Line
	2425 5850 2525 5850
Wire Wire Line
	3750 3600 3900 3600
Wire Wire Line
	10175 5625 9525 5625
Wire Wire Line
	3800 5925 3800 6500
Wire Wire Line
	1700 5975 1950 6550
Wire Wire Line
	4650 6150 4550 6375
Wire Wire Line
	8175 2275 8175 2875
Wire Wire Line
	7475 3150 7475 3725
Wire Wire Line
	4350 5950 3850 6150
Wire Wire Line
	4950 6375 5225 6375
Wire Wire Line
	3850 6150 4050 5950
Wire Wire Line
	8675 3375 9225 3375
Wire Wire Line
	7400 1825 7600 1825
Wire Wire Line
	8175 4025 8175 4600
Wire Wire Line
	3050 4375 3375 4600
Wire Wire Line
	7475 3725 7475 4300
Wire Wire Line
	10475 2750 10575 2750
Wire Wire Line
	6950 1750 6750 1475
Wire Wire Line
	8375 5150 8175 5175
Wire Wire Line
	7700 3650 7525 3325
Wire Wire Line
	9625 1300 9400 1250
Wire Wire Line
	2250 6025 2950 6025
Wire Wire Line
	9400 1250 9625 1300
Wire Wire Line
	6275 1525 6000 1650
Wire Wire Line
	9525 5675 9225 6200
Wire Wire Line
	2550 4425 2750 4425
Wire Wire Line
	5225 6375 4950 6375
Wire Wire Line
	9525 2225 9225 2750
Wire Wire Line
	1175 5075 950 5100
Wire Wire Line
	8125 1200 8175 1200
Wire Wire Line
	7425 4775 7425 4200
Wire Wire Line
	2950 6025 2250 6025
Wire Wire Line
	7250 1825 7400 1825
Wire Wire Line
	8175 1200 8275 1200
Wire Wire Line
	10475 3900 10575 3900
Wire Wire Line
	8675 6250 9225 6250
Wire Wire Line
	9000 3500 9225 3475
Wire Wire Line
	8000 5900 9225 5725
Wire Wire Line
	9225 2175 9050 1700
Wire Wire Line
	3800 5350 4050 4700
Wire Wire Line
	1650 5850 1950 5875
Wire Wire Line
	7525 5625 7325 5625
Wire Wire Line
	10100 3725 10325 3800
Wire Wire Line
	7525 6200 7700 6525
Wire Wire Line
	5400 1075 5625 1075
Wire Wire Line
	7475 6025 7700 6050
Wire Wire Line
	8375 5725 8175 5750
Wire Wire Line
	4325 4300 4225 4300
Wire Wire Line
	9225 5150 8000 5325
Wire Wire Line
	9225 5675 8675 5675
Wire Wire Line
	7700 4800 7525 4475
Wire Wire Line
	7325 5050 7525 5050
Wire Wire Line
	7475 2575 7325 2050
Wire Wire Line
	9225 6300 8000 6475
Wire Wire Line
	10325 2075 10100 2000
Wire Wire Line
	7700 2500 7525 2175
Wire Wire Line
	8175 2875 8175 3450
Wire Wire Line
	8675 4525 9225 4525
Wire Wire Line
	4350 3500 4550 3500
Wire Wire Line
	8000 4175 9225 4000
Wire Wire Line
	7475 4300 7700 4325
Wire Wire Line
	8950 5800 8950 5225
Wire Wire Line
	1175 5125 950 5175
Wire Wire Line
	4350 6525 4050 6525
Wire Wire Line
	8175 4600 8175 5175
Wire Wire Line
	7400 1825 7425 2450
Wire Wire Line
	7700 5325 7425 5350
Wire Wire Line
	9525 2800 9225 3325
Wire Wire Line
	6850 1475 6750 1475
Wire Wire Line
	9225 3950 8675 3950
Wire Wire Line
	9225 3375 8675 3375
Wire Wire Line
	8175 4025 8175 3450
Wire Wire Line
	950 4600 1200 4550
Wire Wire Line
	8375 2175 7525 2175
Wire Wire Line
	9525 4525 9225 5050
Wire Wire Line
	10575 5625 10475 5625
Wire Wire Line
	8175 5175 8175 4600
Wire Wire Line
	7525 4475 7325 4475
Wire Wire Line
	10325 4950 10100 4875
Wire Wire Line
	5625 925 5400 900
Wire Wire Line
	8175 4600 8175 4025
Wire Wire Line
	8175 4600 8375 4575
Wire Wire Line
	2750 4375 2200 4375
Wire Wire Line
	1700 5975 1950 5925
Wire Wire Line
	8000 6475 9225 6300
Wire Wire Line
	8175 4025 8375 4000
Wire Wire Line
	9000 2350 8950 1200
Wire Wire Line
	3850 6150 4350 5950
Wire Wire Line
	1950 5925 1700 5975
Wire Wire Line
	9225 5200 8950 5225
Wire Wire Line
	9225 5775 8950 5800
Wire Wire Line
	7700 4900 7475 4875
Wire Wire Line
	3800 5350 4050 5275
Wire Wire Line
	6725 1950 6950 1900
Wire Wire Line
	10175 2750 9525 2750
Wire Wire Line
	1650 5400 1650 5850
Wire Wire Line
	7525 3325 7700 3650
Wire Wire Line
	3800 5350 3800 5925
Wire Wire Line
	1550 5575 1950 5550
Wire Wire Line
	7425 3025 7425 2450
Wire Wire Line
	7700 3600 7425 3600
Wire Wire Line
	3800 6500 3800 5925
Wire Wire Line
	10325 3800 10100 3725
Wire Wire Line
	1950 6025 1550 6025
Wire Wire Line
	4050 4650 3850 4650
Wire Wire Line
	6575 1475 6750 1475
Wire Wire Line
	2475 5575 3375 4700
Wire Wire Line
	4550 4000 4350 3500
Wire Wire Line
	9525 2175 10175 2175
Wire Wire Line
	4050 6525 4350 6525
Wire Wire Line
	9225 5725 8000 5900
Wire Wire Line
	7825 1200 7700 1200
Wire Wire Line
	6950 1900 6725 1950
Wire Wire Line
	9225 4050 9000 3500
Wire Wire Line
	5525 1425 5400 1425
Wire Wire Line
	8375 6300 8175 5750
Wire Wire Line
	10475 4475 10575 4475
Wire Wire Line
	7700 6050 7475 6025
Wire Wire Line
	10575 3325 10475 3325
Wire Wire Line
	2950 5575 2475 5575
Wire Wire Line
	2200 4525 1900 4525
Wire Wire Line
	7425 3600 7425 3025
Wire Wire Line
	9225 2275 8000 2450
Wire Wire Line
	10100 3725 10100 3150
Wire Wire Line
	8175 2275 8375 2275
Wire Wire Line
	2250 5875 2425 5850
Wire Wire Line
	10325 6100 10100 5450
Wire Wire Line
	7425 2450 7425 3025
Wire Wire Line
	8675 2800 9225 2800
Wire Wire Line
	10100 5450 10100 4875
Wire Wire Line
	7475 2575 7700 2600
Wire Wire Line
	9525 6200 10175 6200
Wire Wire Line
	9225 4475 9525 3950
Wire Wire Line
	7700 2450 7425 2450
Wire Wire Line
	7525 2750 7325 2750
Wire Wire Line
	9000 2925 9225 2900
Wire Wire Line
	4350 3500 4550 4000
Wire Wire Line
	7700 4175 7425 4200
Wire Wire Line
	9225 2800 8675 2800
Wire Wire Line
	7325 2750 7525 2750
Wire Wire Line
	4050 6375 3850 6150
Wire Wire Line
	1650 4475 1650 5400
Wire Wire Line
	950 4425 1200 4450
Wire Wire Line
	10300 6725 10050 6775
Wire Wire Line
	8375 3425 8175 3450
Wire Wire Line
	10050 6775 10300 6725
Wire Wire Line
	4550 3900 4300 3900
Wire Wire Line
	4050 6425 3800 6500
Wire Wire Line
	3675 4650 3850 4650
Wire Wire Line
	6100 1025 6200 1025
Wire Wire Line
	7475 6025 7475 5450
Wire Wire Line
	9525 4475 10175 4475
Wire Wire Line
	8000 5325 9225 5150
Wire Wire Line
	10475 5050 10575 5050
Wire Wire Line
	5625 1075 5400 1075
Wire Wire Line
	7525 5050 7325 5050
Wire Wire Line
	4350 4800 3850 5000
Wire Wire Line
	10100 2575 10100 2000
Wire Wire Line
	6200 1025 6100 1025
Wire Wire Line
	3250 6025 3350 6025
Wire Wire Line
	9000 2350 9225 2325
Wire Wire Line
	1600 4175 1900 4375
Wire Wire Line
	9225 5100 8675 5100
Wire Wire Line
	950 5000 1175 5025
Wire Wire Line
	7475 4300 7475 3725
Wire Wire Line
	7400 1825 7250 1825
Wire Wire Line
	8375 6200 7525 6200
Wire Wire Line
	7900 1825 8175 2275
Wire Wire Line
	2750 4425 2550 4425
Wire Wire Line
	9525 5050 10175 5050
Wire Wire Line
	8950 4650 8175 1200
Wire Wire Line
	1500 4475 1650 4475
Wire Wire Line
	7525 3325 8375 3325
Wire Wire Line
	10175 3325 9525 3325
Wire Wire Line
	8000 3600 9225 3425
Wire Wire Line
	10100 5450 10325 5525
Wire Wire Line
	7525 3900 7325 3900
Wire Wire Line
	8175 3450 8375 3425
Wire Wire Line
	2475 5575 2950 5575
Wire Wire Line
	7425 3025 7425 3600
Wire Wire Line
	1175 4975 950 4925
Wire Wire Line
	10100 4300 10100 4875
Wire Wire Line
	9400 1425 9625 1400
Wire Wire Line
	8950 5225 9225 5200
Wire Wire Line
	7425 4775 7425 5350
Wire Wire Line
	3800 6500 4050 6425
Wire Wire Line
	1950 5400 1650 5400
Wire Wire Line
	950 4525 1200 4500
Wire Wire Line
	9225 4000 8000 4175
Wire Wire Line
	5825 1425 6275 1425
Wire Wire Line
	3850 5000 4050 4800
Wire Wire Line
	1650 5850 1650 5400
Wire Wire Line
	10325 4375 10100 4300
Wire Wire Line
	8175 5750 8175 5175
Wire Wire Line
	7425 3600 7700 3600
Wire Wire Line
	2200 4375 2750 4375
Wire Wire Line
	7525 5625 8375 5625
Wire Wire Line
	8175 2275 7900 1825
Wire Wire Line
	7425 3600 7425 4200
Wire Wire Line
	10475 6200 10575 6200
Wire Wire Line
	1950 5550 1550 5575
Wire Wire Line
	8950 5225 8950 5800
Wire Wire Line
	8375 2850 8175 2875
Wire Wire Line
	9625 1350 9400 1300
Wire Wire Line
	9525 6250 10300 6825
Wire Wire Line
	3850 4300 4350 3500
Wire Wire Line
	6725 1875 6950 1850
Wire Wire Line
	10175 2175 9525 2175
Wire Wire Line
	8375 4000 8175 4025
Wire Wire Line
	950 5175 1175 5125
Wire Wire Line
	9000 2925 9000 2350
Wire Wire Line
	7700 3175 7475 3150
Wire Wire Line
	4300 3900 4550 3900
Wire Wire Line
	7700 4225 7525 3900
Wire Wire Line
	9925 1375 10100 2000
Wire Wire Line
	1650 4475 1900 4425
Wire Wire Line
	10600 6675 10800 6650
Wire Wire Line
	9225 2850 8000 3025
Wire Wire Line
	4550 6375 4350 6375
Wire Wire Line
	6275 1475 6100 1025
Wire Wire Line
	6100 1025 6275 1475
Wire Wire Line
	8175 2875 8175 2275
Wire Wire Line
	10100 4875 10325 4950
Wire Wire Line
	8475 1700 8600 1700
Wire Wire Line
	8175 5175 8175 5750
Wire Wire Line
	9050 1700 9225 2175
Wire Wire Line
	7325 3325 7525 3325
Wire Wire Line
	5625 1025 5400 1025
Wire Wire Line
	7525 5050 7700 5375
Wire Wire Line
	1550 6025 1950 6025
Wire Wire Line
	4050 4800 3850 5000
Wire Wire Line
	1700 5975 1550 5975
Wire Wire Line
	7700 6525 7525 6200
Wire Wire Line
	3100 5925 2875 5400
Wire Wire Line
	4050 5275 3800 5350
Wire Wire Line
	10100 2575 10100 3150
Wire Wire Line
	9225 5050 9525 4525
Wire Wire Line
	7700 4750 7425 4775
Wire Wire Line
	9525 5625 10175 5625
Wire Wire Line
	7600 1825 7400 1825
Wire Wire Line
	4550 3500 4350 3500
Wire Wire Line
	7525 2175 7325 2175
Wire Wire Line
	8950 5800 9225 5775
Wire Wire Line
	3850 5000 4050 5225
Wire Wire Line
	1200 4550 950 4600
Wire Wire Line
	7700 3075 7525 2750
Wire Wire Line
	10475 3325 10575 3325
Wire Wire Line
	7700 3750 7475 3725
Wire Wire Line
	3350 6025 3250 6025
Wire Wire Line
	10575 2175 10475 2175
Wire Wire Line
	10175 3900 9525 3900
Wire Wire Line
	1950 5875 1650 5850
Wire Wire Line
	950 4350 1200 4400
Wire Wire Line
	8175 3450 8175 2875
Wire Wire Line
	2475 5575 2250 5550
Wire Wire Line
	7525 6200 7325 6200
Wire Wire Line
	10800 6650 10600 6675
Wire Wire Line
	9225 2325 9000 2350
Wire Wire Line
	2250 6500 3800 6500
Wire Wire Line
	9225 2750 9525 2225
Wire Wire Line
	10175 4475 9525 4475
Wire Wire Line
	10100 4300 10100 3725
Wire Wire Line
	9525 3900 10175 3900
Wire Wire Line
	3850 5000 4350 4800
Wire Wire Line
	6750 1475 6575 1475
Wire Wire Line
	1200 4400 950 4350
Wire Wire Line
	8175 5750 8375 5725
Wire Wire Line
	1900 4425 1650 4475
Wire Wire Line
	7525 5625 7700 5950
Wire Wire Line
	5400 1025 5625 1025
Wire Wire Line
	10100 3725 10100 4300
Wire Wire Line
	3800 5925 4050 5850
Wire Wire Line
	10575 3900 10475 3900
Wire Wire Line
	7475 5450 7475 6025
Wire Wire Line
	1950 5450 5525 6425
Wire Wire Line
	10575 6200 10475 6200
Wire Wire Line
	8375 2750 7525 2750
Wire Wire Line
	9450 1700 9550 1700
Wire Wire Line
	8950 5225 8950 4650
Wire Wire Line
	8675 3950 9225 3950
Wire Wire Line
	7525 2750 8375 2750
Wire Wire Line
	3850 4300 3850 4650
Wire Wire Line
	8000 3025 9225 2850
Wire Wire Line
	8000 4750 9225 4575
Wire Wire Line
	4000 3900 3900 3600
Wire Wire Line
	8375 5050 7525 5050
Wire Wire Line
	3900 3600 3750 3600
Wire Wire Line
	9625 1450 9400 1475
Wire Wire Line
	4350 3500 3850 4300
Wire Wire Line
	5400 1425 5525 1425
Wire Wire Line
	9525 5100 9225 5625
Wire Wire Line
	5225 6475 4950 6600
Wire Wire Line
	8950 4650 8950 5225
Wire Wire Line
	10575 4475 10475 4475
Wire Wire Line
	9525 3375 9225 3900
Wire Wire Line
	8950 1200 9000 2350
Wire Wire Line
	9225 4625 8950 4650
Wire Wire Line
	10100 3150 10100 2575
Wire Wire Line
	7700 5900 7425 5925
Wire Wire Line
	4225 4300 4325 4300
Wire Wire Line
	9050 1700 9150 1700
Wire Wire Line
	5925 1025 6100 1025
Wire Wire Line
	7525 5050 8375 5050
Wire Wire Line
	7475 5450 7475 4875
Wire Wire Line
	4050 4700 3800 5350
Wire Wire Line
	1650 5850 1950 6450
Wire Wire Line
	4050 5375 3850 5575
Wire Wire Line
	4050 5850 3800 5925
Wire Wire Line
	7700 1200 7825 1200
Wire Wire Line
	7425 5350 7700 5325
Wire Wire Line
	7475 4300 7475 4875
Wire Wire Line
	3850 4650 4050 4650
Wire Wire Line
	6725 1775 6950 1800
Wire Wire Line
	9225 6250 8675 6250
Wire Wire Line
	950 5100 1175 5075
Wire Wire Line
	1200 4500 950 4525
Wire Wire Line
	7525 3325 7325 3325
Wire Wire Line
	10100 3150 10100 3725
Wire Wire Line
	3850 4650 3675 4650
Wire Wire Line
	10325 3225 10100 3150
Wire Wire Line
	2875 5400 1475 5050
Wire Wire Line
	8675 5675 9225 5675
Wire Wire Line
	7525 3900 8375 3900
Wire Wire Line
	4350 6375 4550 6375
Wire Wire Line
	6100 1025 5925 1025
Wire Wire Line
	2425 5850 2250 5875
Wire Wire Line
	9225 4575 8000 4750
Wire Wire Line
	9225 3900 9525 3375
Wire Wire Line
	1950 6550 1700 5975
Wire Wire Line
	8275 1200 8175 1200
Wire Wire Line
	9525 3950 9225 4475
Wire Wire Line
	9225 3475 9000 3500
Wire Wire Line
	6000 1650 6275 1525
Wire Wire Line
	8375 2275 8175 2275
Wire Wire Line
	9225 4525 8675 4525
Wire Wire Line
	10575 2750 10475 2750
Wire Wire Line
	8175 5750 8375 6300
Wire Wire Line
	7475 4875 7475 5450
Wire Wire Line
	1550 5975 1700 5975
Wire Wire Line
	1900 4525 2200 4525
Wire Wire Line
	7700 6625 7475 6025
Wire Wire Line
	10100 4875 10100 4300
Wire Wire Line
	10325 5525 10100 5450
Wire Wire Line
	3800 5925 3800 5350
Wire Wire Line
	7425 2450 7400 1825
Wire Wire Line
	3850 4300 3925 4300
Wire Wire Line
	3850 6150 4050 6375
Wire Wire Line
	8950 4650 9225 4625
Wire Wire Line
	7425 5350 7425 4775
Wire Wire Line
	8375 3325 7525 3325
Wire Wire Line
	10100 2575 10325 2650
Wire Wire Line
	7525 2750 7700 3075
Wire Wire Line
	7425 3025 7700 3025
Wire Wire Line
	9000 2925 9000 3500
Wire Wire Line
	1650 5400 1950 5400
Wire Wire Line
	3850 5575 4050 5800
Wire Wire Line
	7325 2175 7525 2175
Wire Wire Line
	7425 5350 7425 5925
Wire Wire Line
	3900 3600 4000 3900
Wire Wire Line
	7325 5625 7525 5625
Wire Wire Line
	9625 1400 9400 1425
Wire Wire Line
	1650 4475 1500 4475
Wire Wire Line
	10050 6650 10300 6675
Wire Wire Line
	6275 1425 5825 1425
Wire Wire Line
	7425 5925 7700 6475
Wire Wire Line
	5525 6425 1950 5450
Wire Wire Line
	4550 6375 4650 6150
Wire Wire Line
	7700 3025 7425 3025
Wire Wire Line
	7425 5925 7425 5350
Wire Wire Line
	9525 3325 10175 3325
Wire Wire Line
	8650 1200 8575 1200
Wire Wire Line
	6950 1850 6725 1875
Wire Wire Line
	8175 1200 8125 1200
Wire Wire Line
	3925 4300 3850 4300
Wire Wire Line
	5625 1125 5400 1125
Wire Wire Line
	7700 5950 7525 5625
Wire Wire Line
	5400 950 5625 975
Wire Wire Line
	3250 5575 3350 5575
Wire Wire Line
	10100 2000 10325 2075
Wire Wire Line
	7425 4200 7425 3600
Wire Wire Line
	7325 3900 7525 3900
Wire Wire Line
	4350 5375 3850 5575
Wire Wire Line
	7325 6200 7525 6200
Wire Wire Line
	4050 5950 3850 6150
Wire Wire Line
	7425 2450 7700 2450
NoConn ~ 4850 3550
NoConn ~ 4850 3950
NoConn ~ 4350 4650
NoConn ~ 4350 5225
NoConn ~ 2250 5400
NoConn ~ 4350 5800
NoConn ~ 10600 6825
$EndSCHEMATC
