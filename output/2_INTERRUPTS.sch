EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 8268 11693 portrait
encoding utf-8
Sheet 1 1
Title "2_INTERRUPTS"
Date ""
Rev ""
Comp ""
Comment1 "Converted from 2_INTERRUPTS.png"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 1950  1100  0    50   Input ~ 0
BOGA1MHZ
Text GLabel 1950  1175  0    50   Input ~ 0
/RESET2
Text GLabel 6975  2100  2    50   Output ~ 0
INT_JP
Text GLabel 1300  2250  0    50   Input ~ 0
P13_C
Text GLabel 1300  2350  0    50   Input ~ 0
P12
Text GLabel 1300  2500  0    50   Input ~ 0
P11_C
Text GLabel 1300  2600  0    50   Input ~ 0
P10
Text GLabel 3150  2850  2    50   Output ~ 0
TO_CPU2
Text GLabel 2250  2925  0    50   Input ~ 0
BOGA1MHZ
Text GLabel 2175  4100  0    50   Input ~ 0
/RESET2
Text GLabel 3700  4250  0    50   Input ~ 0
P10_B
Text GLabel 5850  4250  0    50   Input ~ 0
FF0F_RD
Text GLabel 1300  4425  0    50   Input ~ 0
FF0F_WR
Text GLabel 7425  4825  2    50   Output ~ 0
D0
Text GLabel 1300  5000  0    50   Input ~ 0
CPU_IRQ0_ACK
Text GLabel 5325  5000  2    50   Output ~ 0
CPU_IRQ0_TRIG
Text GLabel 2675  5075  0    50   Input ~ 0
D0
Text GLabel 4200  5175  0    50   Input ~ 0
INT_VBL_BUF
Text GLabel 1300  5425  0    50   Input ~ 0
D0
Text GLabel 1300  5575  0    50   Input ~ 0
FF0F
Text GLabel 7425  6000  2    50   Output ~ 0
D3
Text GLabel 1300  6175  0    50   Input ~ 0
CPU_IRQ3_ACK
Text GLabel 5325  6175  2    50   Output ~ 0
CPU_IRQ3_TRIG
Text GLabel 2675  6250  0    50   Input ~ 0
D3
Text GLabel 4200  6325  0    50   Input ~ 0
INT_SERIAL
Text GLabel 1300  6575  0    50   Input ~ 0
D3
Text GLabel 1300  6750  0    50   Input ~ 0
FF0F_WR
Text GLabel 7425  7175  2    50   Output ~ 0
D4
Text GLabel 1300  7325  0    50   Input ~ 0
CPU_IRQ4_ACK
Text GLabel 5325  7325  2    50   Output ~ 0
CPU_IRQ4_TRIG
Text GLabel 2675  7425  0    50   Input ~ 0
D4
Text GLabel 4200  7500  0    50   Input ~ 0
INT_JP
Text GLabel 1300  7750  0    50   Input ~ 0
D4
Text GLabel 1300  7925  0    50   Input ~ 0
FF0F
Text GLabel 7425  8325  2    50   Output ~ 0
D1
Text GLabel 1300  8500  0    50   Input ~ 0
CPU_IRQ1_ACK
Text GLabel 5325  8500  2    50   Output ~ 0
CPU_IRQ1_TRIG
Text GLabel 2675  8575  0    50   Input ~ 0
D1
Text GLabel 4200  8650  0    50   Input ~ 0
INT_STAT
Text GLabel 1300  8900  0    50   Input ~ 0
D1
Text GLabel 1300  9075  0    50   Input ~ 0
FF0F
Text GLabel 7425  9500  2    50   Output ~ 0
D2
Text GLabel 1300  9650  0    50   Input ~ 0
CPU_IRQ2_ACK
Text GLabel 5325  9650  2    50   Output ~ 0
CPU_IRQ2_TRIG
Text GLabel 2675  9750  0    50   Input ~ 0
D2
Text GLabel 4275  9825  0    50   Input ~ 0
INT_TIMER
Text GLabel 1300  10075  0    50   Input ~ 0
D2
Text GLabel 1300  10250  0    50   Input ~ 0
FF0F
$Comp
L DMG-CPU:inverter PESU
U 1 1 5EB722DE
P 4050 4250
F 0 "PESU" H 3980 4342 25  0000 C CNN
F 1 "inverter" H 4040 4153 25  0001 C CNN
F 2 "" H 4050 4250 25  0001 C CNN
F 3 "" H 4050 4250 25  0001 C CNN
	1    4050 4250
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:inverter POLA
U 1 1 5EB722DE
P 6300 4250
F 0 "POLA" H 6230 4342 25  0000 C CNN
F 1 "inverter" H 6290 4153 25  0001 C CNN
F 2 "" H 6300 4250 25  0001 C CNN
F 3 "" H 6300 4250 25  0001 C CNN
	1    6300 4250
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:inverter ROTU
U 1 1 5EB722DE
P 1675 4425
F 0 "ROTU" H 1605 4517 25  0000 C CNN
F 1 "inverter" H 1665 4328 25  0001 C CNN
F 2 "" H 1675 4425 25  0001 C CNN
F 3 "" H 1675 4425 25  0001 C CNN
	1    1675 4425
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:tribuffer NELA
U 1 1 5EB722DE
P 7100 4825
F 0 "NELA" H 7033 4728 25  0000 C CNN
F 1 "tribuffer" H 7098 4693 25  0001 C CNN
F 2 "" H 7100 4925 25  0001 C CNN
F 3 "" H 7100 4925 25  0001 C CNN
	1    7100 4825
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:inverter LETY
U 1 1 5EB722DE
P 1675 5000
F 0 "LETY" H 1605 5092 25  0000 C CNN
F 1 "inverter" H 1665 4903 25  0001 C CNN
F 2 "" H 1675 5000 25  0001 C CNN
F 3 "" H 1675 5000 25  0001 C CNN
	1    1675 5000
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:tribuffer PADO
U 1 1 5EB722DE
P 7100 6000
F 0 "PADO" H 7033 5903 25  0000 C CNN
F 1 "tribuffer" H 7098 5868 25  0001 C CNN
F 2 "" H 7100 6100 25  0001 C CNN
F 3 "" H 7100 6100 25  0001 C CNN
	1    7100 6000
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:inverter LUFE
U 1 1 5EB722DE
P 1675 6175
F 0 "LUFE" H 1605 6267 25  0000 C CNN
F 1 "inverter" H 1665 6078 25  0001 C CNN
F 2 "" H 1675 6175 25  0001 C CNN
F 3 "" H 1675 6175 25  0001 C CNN
	1    1675 6175
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:tribuffer PEGY
U 1 1 5EB722DE
P 7100 7175
F 0 "PEGY" H 7033 7078 25  0000 C CNN
F 1 "tribuffer" H 7098 7043 25  0001 C CNN
F 2 "" H 7100 7275 25  0001 C CNN
F 3 "" H 7100 7275 25  0001 C CNN
	1    7100 7175
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:inverter LAMO
U 1 1 5EB722DE
P 1675 7325
F 0 "LAMO" H 1605 7417 25  0000 C CNN
F 1 "inverter" H 1665 7228 25  0001 C CNN
F 2 "" H 1675 7325 25  0001 C CNN
F 3 "" H 1675 7325 25  0001 C CNN
	1    1675 7325
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:tribuffer NABO
U 1 1 5EB722DE
P 7100 8325
F 0 "NABO" H 7033 8228 25  0000 C CNN
F 1 "tribuffer" H 7098 8193 25  0001 C CNN
F 2 "" H 7100 8425 25  0001 C CNN
F 3 "" H 7100 8425 25  0001 C CNN
	1    7100 8325
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:inverter LEJA
U 1 1 5EB722DE
P 1675 8500
F 0 "LEJA" H 1605 8592 25  0000 C CNN
F 1 "inverter" H 1665 8403 25  0001 C CNN
F 2 "" H 1675 8500 25  0001 C CNN
F 3 "" H 1675 8500 25  0001 C CNN
	1    1675 8500
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:tribuffer ROVA
U 1 1 5EB722DE
P 7100 9500
F 0 "ROVA" H 7033 9403 25  0000 C CNN
F 1 "tribuffer" H 7098 9368 25  0001 C CNN
F 2 "" H 7100 9600 25  0001 C CNN
F 3 "" H 7100 9600 25  0001 C CNN
	1    7100 9500
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:inverter LESA
U 1 1 5EB722DE
P 1675 9650
F 0 "LESA" H 1605 9742 25  0000 C CNN
F 1 "inverter" H 1665 9553 25  0001 C CNN
F 2 "" H 1675 9650 25  0001 C CNN
F 3 "" H 1675 9650 25  0001 C CNN
	1    1675 9650
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:and_2 ASOK
U 1 1 5EB722DE
P 6500 2100
F 0 "ASOK" H 6430 2192 25  0000 C CNN
F 1 "and_2" H 6475 2005 25  0001 C CNN
F 2 "" H 6500 2100 25  0001 C CNN
F 3 "" H 6500 2100 25  0001 C CNN
	1    6500 2100
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:and_3 LYTA
U 1 1 5EB722DE
P 3175 5575
F 0 "LYTA" H 3105 5667 25  0000 C CNN
F 1 "and_3" H 3150 5480 25  0001 C CNN
F 2 "" H 3175 5575 25  0001 C CNN
F 3 "" H 3175 5575 25  0001 C CNN
	1    3175 5575
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:and_3 TUNY
U 1 1 5EB722DE
P 3175 6750
F 0 "TUNY" H 3105 6842 25  0000 C CNN
F 1 "and_3" H 3150 6655 25  0001 C CNN
F 2 "" H 3175 6750 25  0001 C CNN
F 3 "" H 3175 6750 25  0001 C CNN
	1    3175 6750
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:and_3 TYME
U 1 1 5EB722DE
P 3175 7925
F 0 "TYME" H 3105 8017 25  0000 C CNN
F 1 "and_3" H 3150 7830 25  0001 C CNN
F 2 "" H 3175 7925 25  0001 C CNN
F 3 "" H 3175 7925 25  0001 C CNN
	1    3175 7925
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:and_3 MOVU
U 1 1 5EB722DE
P 3175 9075
F 0 "MOVU" H 3105 9167 25  0000 C CNN
F 1 "and_3" H 3150 8980 25  0001 C CNN
F 2 "" H 3175 9075 25  0001 C CNN
F 3 "" H 3175 9075 25  0001 C CNN
	1    3175 9075
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:and_3 PYGA
U 1 1 5EB722DE
P 3175 10250
F 0 "PYGA" H 3105 10342 25  0000 C CNN
F 1 "and_3" H 3150 10155 25  0001 C CNN
F 2 "" H 3175 10250 25  0001 C CNN
F 3 "" H 3175 10250 25  0001 C CNN
	1    3175 10250
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:or_4 KERY
U 1 1 5EB722DE
P 1800 2425
F 0 "KERY" H 1730 2532 25  0000 C CNN
F 1 "or_4" H 1758 2315 25  0001 C CNN
F 2 "" H 1800 2425 25  0001 C CNN
F 3 "" H 1800 2425 25  0001 C CNN
	1    1800 2425
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:or_2 MUXE
U 1 1 5EB722DE
P 1800 5500
F 0 "MUXE" H 1730 5595 25  0000 C CNN
F 1 "or_2" H 1760 5403 25  0001 C CNN
F 2 "" H 1800 5500 25  0001 C CNN
F 3 "" H 1800 5500 25  0001 C CNN
	1    1800 5500
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:or_2 SULO
U 1 1 5EB722DE
P 1800 6675
F 0 "SULO" H 1730 6770 25  0000 C CNN
F 1 "or_2" H 1760 6578 25  0001 C CNN
F 2 "" H 1800 6675 25  0001 C CNN
F 3 "" H 1800 6675 25  0001 C CNN
	1    1800 6675
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:or_2 SEME
U 1 1 5EB722DE
P 1800 7825
F 0 "SEME" H 1730 7920 25  0000 C CNN
F 1 "or_2" H 1760 7728 25  0001 C CNN
F 2 "" H 1800 7825 25  0001 C CNN
F 3 "" H 1800 7825 25  0001 C CNN
	1    1800 7825
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:or_2 NABE
U 1 1 5EB722DE
P 1800 9000
F 0 "NABE" H 1730 9095 25  0000 C CNN
F 1 "or_2" H 1760 8903 25  0001 C CNN
F 2 "" H 1800 9000 25  0001 C CNN
F 3 "" H 1800 9000 25  0001 C CNN
	1    1800 9000
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:or_2 RAKE
U 1 1 5EB722DE
P 1800 10150
F 0 "RAKE" H 1730 10245 25  0000 C CNN
F 1 "or_2" H 1760 10053 25  0001 C CNN
F 2 "" H 1800 10150 25  0001 C CNN
F 3 "" H 1800 10150 25  0001 C CNN
	1    1800 10150
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:nand_3 MYZU
U 1 1 5EB722DE
P 3200 5000
F 0 "MYZU" H 3130 5092 25  0000 C CNN
F 1 "nand_3" H 3185 4905 25  0001 C CNN
F 2 "" H 3200 5000 25  0001 C CNN
F 3 "" H 3200 5000 25  0001 C CNN
	1    3200 5000
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:nand_3 TOME
U 1 1 5EB722DE
P 3200 6175
F 0 "TOME" H 3130 6267 25  0000 C CNN
F 1 "nand_3" H 3185 6080 25  0001 C CNN
F 2 "" H 3200 6175 25  0001 C CNN
F 3 "" H 3200 6175 25  0001 C CNN
	1    3200 6175
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:nand_3 TOGA
U 1 1 5EB722DE
P 3200 7325
F 0 "TOGA" H 3130 7417 25  0000 C CNN
F 1 "nand_3" H 3185 7230 25  0001 C CNN
F 2 "" H 3200 7325 25  0001 C CNN
F 3 "" H 3200 7325 25  0001 C CNN
	1    3200 7325
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:nand_3 MODY
U 1 1 5EB722DE
P 3200 8500
F 0 "MODY" H 3130 8592 25  0000 C CNN
F 1 "nand_3" H 3185 8405 25  0001 C CNN
F 2 "" H 3200 8500 25  0001 C CNN
F 3 "" H 3200 8500 25  0001 C CNN
	1    3200 8500
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:nand_3 PYHU
U 1 1 5EB722DE
P 3200 9650
F 0 "PYHU" H 3130 9742 25  0000 C CNN
F 1 "nand_3" H 3185 9555 25  0001 C CNN
F 2 "" H 3200 9650 25  0001 C CNN
F 3 "" H 3200 9650 25  0001 C CNN
	1    3200 9650
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:dtff ACEF
U 1 1 5EB722DE
P 3625 1625
F 0 "ACEF" H 3555 1730 25  0000 C CNN
F 1 "dtff" H 3600 1518 25  0001 C CNN
F 2 "" H 3625 1625 25  0001 C CNN
F 3 "" H 3625 1625 25  0001 C CNN
	1    3625 1625
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:dtff AGEM
U 1 1 5EB722DE
P 4625 1625
F 0 "AGEM" H 4555 1730 25  0000 C CNN
F 1 "dtff" H 4600 1518 25  0001 C CNN
F 2 "" H 4625 1625 25  0001 C CNN
F 3 "" H 4625 1625 25  0001 C CNN
	1    4625 1625
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:dtff APUG
U 1 1 5EB722DE
P 5650 1625
F 0 "APUG" H 5580 1730 25  0000 C CNN
F 1 "dtff" H 5625 1518 25  0001 C CNN
F 2 "" H 5650 1625 25  0001 C CNN
F 3 "" H 5650 1625 25  0001 C CNN
	1    5650 1625
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:dtff BATU
U 1 1 5EB722DE
P 2750 2300
F 0 "BATU" H 2680 2405 25  0000 C CNN
F 1 "dtff" H 2725 2193 25  0001 C CNN
F 2 "" H 2750 2300 25  0001 C CNN
F 3 "" H 2750 2300 25  0001 C CNN
	1    2750 2300
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:dtff3 LOPE
U 1 1 5EB722DE
P 4750 5050
F 0 "LOPE" H 4680 5155 25  0000 C CNN
F 1 "dtff3" H 4725 4943 25  0001 C CNN
F 2 "" H 4750 5050 25  0001 C CNN
F 3 "" H 4750 5050 25  0001 C CNN
	1    4750 5050
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:dtff3 UBUL
U 1 1 5EB722DE
P 4750 6200
F 0 "UBUL" H 4680 6305 25  0000 C CNN
F 1 "dtff3" H 4725 6093 25  0001 C CNN
F 2 "" H 4750 6200 25  0001 C CNN
F 3 "" H 4750 6200 25  0001 C CNN
	1    4750 6200
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:dtff3 ULAK
U 1 1 5EB722DE
P 4750 7375
F 0 "ULAK" H 4680 7480 25  0000 C CNN
F 1 "dtff3" H 4725 7268 25  0001 C CNN
F 2 "" H 4750 7375 25  0001 C CNN
F 3 "" H 4750 7375 25  0001 C CNN
	1    4750 7375
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:dtff3 LALU
U 1 1 5EB722DE
P 4750 8525
F 0 "LALU" H 4680 8630 25  0000 C CNN
F 1 "dtff3" H 4725 8418 25  0001 C CNN
F 2 "" H 4750 8525 25  0001 C CNN
F 3 "" H 4750 8525 25  0001 C CNN
	1    4750 8525
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:dtff3 NYBO
U 1 1 5EB722DE
P 4750 9700
F 0 "NYBO" H 4680 9805 25  0000 C CNN
F 1 "dtff3" H 4725 9593 25  0001 C CNN
F 2 "" H 4750 9700 25  0001 C CNN
F 3 "" H 4750 9700 25  0001 C CNN
	1    4750 9700
	1    0    0    -1
$EndComp
Connection ~ 6775 4500
Connection ~ 6000 4850
Connection ~ 2225 4925
Connection ~ 4325 4925
Connection ~ 2300 5675
Connection ~ 6775 5675
Connection ~ 6000 6000
Connection ~ 2225 6100
Connection ~ 4325 6100
Connection ~ 2300 6825
Connection ~ 6775 6825
Connection ~ 6000 7175
Connection ~ 2225 7250
Connection ~ 4325 7250
Connection ~ 2300 8000
Connection ~ 6775 8000
Connection ~ 6000 8325
Connection ~ 2225 8425
Connection ~ 4325 8425
Connection ~ 2300 9175
Connection ~ 3175 2175
Connection ~ 5200 5000
Connection ~ 5200 6175
Connection ~ 5200 7325
Connection ~ 5200 8500
Connection ~ 5200 9650
Connection ~ 2300 1100
Connection ~ 3175 1100
Connection ~ 4175 1100
Connection ~ 2225 1175
Connection ~ 3100 1175
Connection ~ 4100 1175
Connection ~ 2300 2425
Connection ~ 5975 4250
Connection ~ 2375 5000
Connection ~ 2375 6175
Connection ~ 2375 7325
Connection ~ 2375 8500
Connection ~ 2375 9675
$Comp
L DMG-CPU:latch AWOB
U 1 1 5EB722DE
P 2700 2875
F 0 "AWOB" H 2630 2980 25  0000 C CNN
F 1 "latch" H 2675 2768 25  0001 C CNN
F 2 "" H 2700 2875 25  0001 C CNN
F 3 "" H 2700 2875 25  0001 C CNN
	1    2700 2875
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:latch MATY
U 1 1 5EB722DE
P 6375 4800
F 0 "MATY" H 6305 4905 25  0000 C CNN
F 1 "latch" H 6350 4693 25  0001 C CNN
F 2 "" H 6375 4800 25  0001 C CNN
F 3 "" H 6375 4800 25  0001 C CNN
	1    6375 4800
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:latch NEJY
U 1 1 5EB722DE
P 6375 5950
F 0 "NEJY" H 6305 6055 25  0000 C CNN
F 1 "latch" H 6350 5843 25  0001 C CNN
F 2 "" H 6375 5950 25  0001 C CNN
F 3 "" H 6375 5950 25  0001 C CNN
	1    6375 5950
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:latch NUTY
U 1 1 5EB722DE
P 6375 7125
F 0 "NUTY" H 6305 7230 25  0000 C CNN
F 1 "latch" H 6350 7018 25  0001 C CNN
F 2 "" H 6375 7125 25  0001 C CNN
F 3 "" H 6375 7125 25  0001 C CNN
	1    6375 7125
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:latch MOPO
U 1 1 5EB722DE
P 6375 8275
F 0 "MOPO" H 6305 8380 25  0000 C CNN
F 1 "latch" H 6350 8168 25  0001 C CNN
F 2 "" H 6375 8275 25  0001 C CNN
F 3 "" H 6375 8275 25  0001 C CNN
	1    6375 8275
	1    0    0    -1
$EndComp
$Comp
L DMG-CPU:latch PAVY
U 1 1 5EB722DE
P 6375 9450
F 0 "PAVY" H 6305 9555 25  0000 C CNN
F 1 "latch" H 6350 9343 25  0001 C CNN
F 2 "" H 6375 9450 25  0001 C CNN
F 3 "" H 6375 9450 25  0001 C CNN
	1    6375 9450
	1    0    0    -1
$EndComp
Wire Wire Line
	1825 8500 2375 8500
Wire Wire Line
	3175 2175 2900 2225
Wire Wire Line
	3325 6750 4600 6225
Wire Wire Line
	3175 2175 6350 2150
Wire Wire Line
	2225 4925 1825 4425
Wire Wire Line
	6350 2050 5800 1550
Wire Wire Line
	5200 7325 6225 7050
Wire Wire Line
	6525 7200 6950 7175
Wire Wire Line
	4175 1100 5500 1550
Wire Wire Line
	5975 4250 6150 4250
Wire Wire Line
	6775 5675 6775 6825
Wire Wire Line
	3050 5050 2675 5075
Wire Wire Line
	6775 6825 6775 8000
Wire Wire Line
	1525 4425 1300 4425
Wire Wire Line
	2225 7250 3050 7275
Wire Wire Line
	5500 1550 4175 1100
Wire Wire Line
	1300 2250 1650 2350
Wire Wire Line
	4600 4975 4325 4925
Wire Wire Line
	3050 8550 2675 8575
Wire Wire Line
	2250 2925 2550 2950
Wire Wire Line
	2600 2275 2225 1175
Wire Wire Line
	5325 7325 5200 7325
Wire Wire Line
	3475 1700 3175 2175
Wire Wire Line
	6775 8000 7100 8225
Wire Wire Line
	7425 8325 7250 8325
Wire Wire Line
	4600 6275 4200 6325
Wire Wire Line
	4475 1550 4175 1100
Wire Wire Line
	1300 8900 1650 8950
Wire Wire Line
	4900 7350 5200 7325
Wire Wire Line
	5200 9650 5325 9650
Wire Wire Line
	1825 9650 2375 9675
Wire Wire Line
	4600 7400 3325 7925
Wire Wire Line
	3325 9075 4600 8550
Wire Wire Line
	3175 1100 2300 1100
Wire Wire Line
	5200 8500 6225 8200
Wire Wire Line
	2300 2425 1950 2425
Wire Wire Line
	1650 2400 1300 2350
Wire Wire Line
	2300 5675 2175 4100
Wire Wire Line
	2300 6825 2300 5675
Wire Wire Line
	1650 5450 1300 5425
Wire Wire Line
	3100 1175 4100 1175
Wire Wire Line
	6150 4250 5975 4250
Wire Wire Line
	3050 5000 2375 5000
Wire Wire Line
	2375 6175 3050 6175
Wire Wire Line
	3050 7375 2675 7425
Wire Wire Line
	2225 8425 3050 9600
Wire Wire Line
	1525 5000 1300 5000
Wire Wire Line
	2300 8000 3025 7975
Wire Wire Line
	2375 9675 1825 9650
Wire Wire Line
	4600 5025 3350 5000
Wire Wire Line
	1300 2500 1650 2450
Wire Wire Line
	3700 4250 3900 4250
Wire Wire Line
	6950 9500 6525 9525
Wire Wire Line
	5325 5000 5200 5000
Wire Wire Line
	6225 7050 5200 7325
Wire Wire Line
	6000 4850 6225 4875
Wire Wire Line
	5325 8500 5200 8500
Wire Wire Line
	7425 9500 7250 9500
Wire Wire Line
	4325 4925 4325 6100
Wire Wire Line
	3175 1100 3475 1550
Wire Wire Line
	3325 5575 4600 5075
Wire Wire Line
	4325 6100 4325 7250
Wire Wire Line
	6000 8325 6225 8350
Wire Wire Line
	1950 2425 2300 2425
Wire Wire Line
	1950 10150 3025 10200
Wire Wire Line
	2225 7250 2225 6100
Wire Wire Line
	6000 6000 6000 4850
Wire Wire Line
	6000 7175 6000 6000
Wire Wire Line
	4475 1600 4100 1175
Wire Wire Line
	6000 8325 6000 7175
Wire Wire Line
	7250 4825 7425 4825
Wire Wire Line
	2375 8500 3050 8500
Wire Wire Line
	5500 1700 4775 1550
Wire Wire Line
	3050 9700 2675 9750
Wire Wire Line
	2300 8000 2300 9175
Wire Wire Line
	4600 5075 3325 5575
Wire Wire Line
	2550 2800 2300 2425
Wire Wire Line
	1525 6175 1300 6175
Wire Wire Line
	6775 4500 7100 4725
Wire Wire Line
	4600 7300 4325 7250
Wire Wire Line
	4600 6175 3350 6175
Wire Wire Line
	3025 7975 2300 8000
Wire Wire Line
	1300 4425 1525 4425
Wire Wire Line
	6775 4500 6775 5675
Wire Wire Line
	4600 8550 3325 9075
Wire Wire Line
	4200 5175 4600 5125
Wire Wire Line
	3025 10250 2375 9675
Wire Wire Line
	4325 4925 4600 4975
Wire Wire Line
	4200 8650 4600 8600
Wire Wire Line
	1650 8950 1300 8900
Wire Wire Line
	5325 9650 5200 9650
Wire Wire Line
	2225 1175 2600 2275
Wire Wire Line
	4200 4250 4325 4925
Wire Wire Line
	1950 6675 3025 6700
Wire Wire Line
	4100 1175 3100 1175
Wire Wire Line
	3350 6175 4600 6175
Wire Wire Line
	2375 7325 1825 7325
Wire Wire Line
	4775 1550 5500 1700
Wire Wire Line
	4325 7250 4325 6100
Wire Wire Line
	4325 8425 4325 7250
Wire Wire Line
	7250 6000 7425 6000
Wire Wire Line
	3050 9650 2375 9675
Wire Wire Line
	2850 2800 3150 2850
Wire Wire Line
	6225 4725 5200 5000
Wire Wire Line
	3025 6800 2300 6825
Wire Wire Line
	5200 5000 4900 5025
Wire Wire Line
	7425 6000 7250 6000
Wire Wire Line
	2225 4925 3050 4950
Wire Wire Line
	2300 1100 1950 1100
Wire Wire Line
	3025 10300 2300 9175
Wire Wire Line
	1300 5000 1525 5000
Wire Wire Line
	1300 5575 1650 5550
Wire Wire Line
	6775 5675 7100 5900
Wire Wire Line
	4200 6325 4600 6275
Wire Wire Line
	4325 8425 4600 8450
Wire Wire Line
	4275 9825 4600 9775
Wire Wire Line
	2225 6100 2225 7250
Wire Wire Line
	4100 1175 4475 1600
Wire Wire Line
	1825 4425 2225 4925
Wire Wire Line
	2225 7250 2225 8425
Wire Wire Line
	7100 7075 6775 6825
Wire Wire Line
	3350 8500 4600 8500
Wire Wire Line
	2900 2225 3175 2175
Wire Wire Line
	6950 6000 6525 6025
Wire Wire Line
	6775 8000 6775 6825
Wire Wire Line
	6225 9375 5200 9650
Wire Wire Line
	4600 6225 3325 6750
Wire Wire Line
	3175 2175 3475 1700
Wire Wire Line
	5200 9650 6225 9375
Wire Wire Line
	2600 2225 2300 1100
Wire Wire Line
	4600 7450 4200 7500
Wire Wire Line
	2375 9675 3025 10250
Wire Wire Line
	3025 9125 2300 9175
Wire Wire Line
	2225 4925 2225 6100
Wire Wire Line
	4600 9725 3325 10250
Wire Wire Line
	4325 6100 4325 4925
Wire Wire Line
	2300 5675 3025 5625
Wire Wire Line
	5975 4250 5850 4250
Wire Wire Line
	1650 5550 1300 5575
Wire Wire Line
	1950 1100 2300 1100
Wire Wire Line
	3050 4950 2225 4925
Wire Wire Line
	1300 6175 1525 6175
Wire Wire Line
	1650 7775 1300 7750
Wire Wire Line
	2225 6100 3050 6125
Wire Wire Line
	1300 6750 1650 6725
Wire Wire Line
	3050 7325 2375 7325
Wire Wire Line
	4200 7500 4600 7450
Wire Wire Line
	2225 8425 3050 8450
Wire Wire Line
	1825 5000 2375 5000
Wire Wire Line
	3050 8450 2225 8425
Wire Wire Line
	7100 8225 6775 8000
Wire Wire Line
	2300 9175 3025 10300
Wire Wire Line
	3775 1550 4475 1700
Wire Wire Line
	5200 8500 4900 8500
Wire Wire Line
	6225 4875 6000 4850
Wire Wire Line
	6000 4850 5975 4250
Wire Wire Line
	2300 1100 2600 2225
Wire Wire Line
	3025 9075 2375 8500
Wire Wire Line
	6225 7200 6000 7175
Wire Wire Line
	3025 5525 1950 5500
Wire Wire Line
	2300 2425 2600 2375
Wire Wire Line
	1650 2500 1300 2600
Wire Wire Line
	3175 1100 4175 1100
Wire Wire Line
	4600 8500 3350 8500
Wire Wire Line
	6000 6000 6225 6025
Wire Wire Line
	3100 1175 2225 1175
Wire Wire Line
	1650 7875 1300 7925
Wire Wire Line
	6975 2100 6650 2100
Wire Wire Line
	6950 4825 6525 4875
Wire Wire Line
	3150 2850 2850 2800
Wire Wire Line
	1300 7325 1525 7325
Wire Wire Line
	1300 7925 1650 7875
Wire Wire Line
	4600 5125 4200 5175
Wire Wire Line
	2300 9175 3025 9125
Wire Wire Line
	1825 6175 2375 6175
Wire Wire Line
	4600 8450 4325 8425
Wire Wire Line
	7100 9400 6775 8000
Wire Wire Line
	4600 6125 4325 6100
Wire Wire Line
	6225 9525 6000 8325
Wire Wire Line
	3325 7925 4600 7400
Wire Wire Line
	3100 1175 3475 1600
Wire Wire Line
	3475 1550 3175 1100
Wire Wire Line
	4325 4925 4200 4250
Wire Wire Line
	4600 9625 4325 8425
Wire Wire Line
	6225 8200 5200 8500
Wire Wire Line
	2225 1175 3100 1175
Wire Wire Line
	1650 10100 1300 10075
Wire Wire Line
	2375 5000 3050 5000
Wire Wire Line
	1650 6725 1300 6750
Wire Wire Line
	6000 6000 6000 7175
Wire Wire Line
	3050 6125 2225 6100
Wire Wire Line
	2375 8500 1825 8500
Wire Wire Line
	1525 7325 1300 7325
Wire Wire Line
	1300 2350 1650 2400
Wire Wire Line
	3050 9600 2225 8425
Wire Wire Line
	2175 4100 2300 5675
Wire Wire Line
	4900 5025 5200 5000
Wire Wire Line
	2675 7425 3050 7375
Wire Wire Line
	3025 6750 2375 6175
Wire Wire Line
	1300 8500 1525 8500
Wire Wire Line
	5200 5000 5325 5000
Wire Wire Line
	1300 9075 1650 9050
Wire Wire Line
	3025 7875 1950 7825
Wire Wire Line
	6650 2100 6975 2100
Wire Wire Line
	5200 7325 4900 7350
Wire Wire Line
	2300 1100 3175 1100
Wire Wire Line
	3325 10250 4600 9725
Wire Wire Line
	4175 1100 3175 1100
Wire Wire Line
	1950 9000 3025 9025
Wire Wire Line
	6775 5675 6775 4500
Wire Wire Line
	4600 7350 3350 7325
Wire Wire Line
	1650 6625 1300 6575
Wire Wire Line
	4100 1175 5500 1600
Wire Wire Line
	2375 7325 3050 7325
Wire Wire Line
	7250 7175 7425 7175
Wire Wire Line
	4325 7250 4325 8425
Wire Wire Line
	4325 8425 4600 9625
Wire Wire Line
	1525 8500 1300 8500
Wire Wire Line
	1300 2600 1650 2500
Wire Wire Line
	5850 4250 5975 4250
Wire Wire Line
	2300 6825 2300 8000
Wire Wire Line
	6525 9525 6950 9500
Wire Wire Line
	2675 5075 3050 5050
Wire Wire Line
	2675 8575 3050 8550
Wire Wire Line
	4600 9775 4275 9825
Wire Wire Line
	5200 7325 5325 7325
Wire Wire Line
	1300 9650 1525 9650
Wire Wire Line
	2300 5675 2300 6825
Wire Wire Line
	1300 10250 1650 10200
Wire Wire Line
	5975 4250 6000 4850
Wire Wire Line
	1950 5500 3025 5525
Wire Wire Line
	3350 5000 4600 5025
Wire Wire Line
	2375 6175 1825 6175
Wire Wire Line
	2225 6100 2225 4925
Wire Wire Line
	3050 7275 2225 7250
Wire Wire Line
	7425 4825 7250 4825
Wire Wire Line
	2225 8425 2225 7250
Wire Wire Line
	1650 2350 1300 2250
Wire Wire Line
	3050 8500 2375 8500
Wire Wire Line
	2375 9675 3050 9650
Wire Wire Line
	7250 8325 7425 8325
Wire Wire Line
	2600 2375 2300 2425
Wire Wire Line
	3475 1600 3100 1175
Wire Wire Line
	6225 5875 5200 6175
Wire Wire Line
	4900 6175 5200 6175
Wire Wire Line
	4325 6100 4600 6125
Wire Wire Line
	5200 9650 4900 9675
Wire Wire Line
	1525 9650 1300 9650
Wire Wire Line
	5200 6175 5325 6175
Wire Wire Line
	3025 9025 1950 9000
Wire Wire Line
	3025 7925 2375 7325
Wire Wire Line
	3025 5575 2375 5000
Wire Wire Line
	4900 9675 5200 9650
Wire Wire Line
	1300 5425 1650 5450
Wire Wire Line
	1650 2450 1300 2500
Wire Wire Line
	2675 6250 3050 6225
Wire Wire Line
	2300 6825 3025 6800
Wire Wire Line
	2675 9750 3050 9700
Wire Wire Line
	6225 6025 6000 6000
Wire Wire Line
	6450 4250 6775 4500
Wire Wire Line
	6000 7175 6000 8325
Wire Wire Line
	2375 6175 3025 6750
Wire Wire Line
	1950 7825 3025 7875
Wire Wire Line
	6000 8325 6225 9525
Wire Wire Line
	3350 7325 4600 7350
Wire Wire Line
	5800 1550 6350 2050
Wire Wire Line
	2300 8000 2300 6825
Wire Wire Line
	6950 8325 6525 8350
Wire Wire Line
	2300 9175 2300 8000
Wire Wire Line
	2300 2425 2550 2800
Wire Wire Line
	4175 1100 4475 1550
Wire Wire Line
	7250 9500 7425 9500
Wire Wire Line
	6000 4850 6000 6000
Wire Wire Line
	5325 6175 5200 6175
Wire Wire Line
	4900 8500 5200 8500
Wire Wire Line
	5200 6175 4900 6175
Wire Wire Line
	6525 6025 6950 6000
Wire Wire Line
	3025 5625 2300 5675
Wire Wire Line
	4600 9675 3350 9650
Wire Wire Line
	6225 8350 6000 8325
Wire Wire Line
	1650 10200 1300 10250
Wire Wire Line
	2375 5000 3025 5575
Wire Wire Line
	1300 6575 1650 6625
Wire Wire Line
	3050 6175 2375 6175
Wire Wire Line
	6000 7175 6225 7200
Wire Wire Line
	1300 10075 1650 10100
Wire Wire Line
	4475 1700 3775 1550
Wire Wire Line
	7100 4725 6775 4500
Wire Wire Line
	2375 8500 3025 9075
Wire Wire Line
	1825 7325 2375 7325
Wire Wire Line
	5500 1600 4100 1175
Wire Wire Line
	3350 9650 4600 9675
Wire Wire Line
	2550 2950 2250 2925
Wire Wire Line
	3025 6700 1950 6675
Wire Wire Line
	6775 4500 6450 4250
Wire Wire Line
	5200 5000 6225 4725
Wire Wire Line
	6525 4875 6950 4825
Wire Wire Line
	5200 8500 5325 8500
Wire Wire Line
	6350 2150 3175 2175
Wire Wire Line
	4600 8600 4200 8650
Wire Wire Line
	3025 10200 1950 10150
Wire Wire Line
	6775 6825 6775 5675
Wire Wire Line
	1650 9050 1300 9075
Wire Wire Line
	6525 8350 6950 8325
Wire Wire Line
	2225 1175 1950 1175
Wire Wire Line
	3900 4250 3700 4250
Wire Wire Line
	6775 6825 7100 7075
Wire Wire Line
	2375 5000 1825 5000
Wire Wire Line
	5200 6175 6225 5875
Wire Wire Line
	1950 1175 2225 1175
Wire Wire Line
	3050 6225 2675 6250
Wire Wire Line
	2375 7325 3025 7925
Wire Wire Line
	6950 7175 6525 7200
Wire Wire Line
	7425 7175 7250 7175
Wire Wire Line
	4325 7250 4600 7300
Wire Wire Line
	1300 7750 1650 7775
Wire Wire Line
	7100 5900 6775 5675
Wire Wire Line
	6775 8000 7100 9400
NoConn ~ 3775 1700
NoConn ~ 4775 1700
NoConn ~ 5800 1700
NoConn ~ 2900 2375
NoConn ~ 4900 4975
NoConn ~ 4900 6125
NoConn ~ 4900 7300
NoConn ~ 4900 8450
NoConn ~ 4900 9625
NoConn ~ 2850 2950
NoConn ~ 6525 4725
NoConn ~ 6525 5875
NoConn ~ 6525 7050
NoConn ~ 6525 8200
NoConn ~ 6525 9375
$EndSCHEMATC
