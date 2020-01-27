EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "80m DC RX Prototype"
Date "2020-01-22"
Rev "1"
Comp "DM3MAT"
Comment1 "based on design by SP5DDJ"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:R R2
U 1 1 5E2828E6
P 3150 2650
F 0 "R2" H 3220 2696 50  0000 L CNN
F 1 "1M" H 3220 2605 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P5.08mm_Vertical" V 3080 2650 50  0001 C CNN
F 3 "~" H 3150 2650 50  0001 C CNN
	1    3150 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5E2A25DF
P 3700 2900
F 0 "R4" H 3770 2946 50  0000 L CNN
F 1 "1k" H 3770 2855 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 3630 2900 50  0001 C CNN
F 3 "~" H 3700 2900 50  0001 C CNN
	1    3700 2900
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5E2A89DC
P 3150 3150
F 0 "#PWR0105" H 3150 2900 50  0001 C CNN
F 1 "GND" H 3155 2977 50  0000 C CNN
F 2 "" H 3150 3150 50  0001 C CNN
F 3 "" H 3150 3150 50  0001 C CNN
	1    3150 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5E2A8CA4
P 3700 3150
F 0 "#PWR0106" H 3700 2900 50  0001 C CNN
F 1 "GND" H 3705 2977 50  0000 C CNN
F 2 "" H 3700 3150 50  0001 C CNN
F 3 "" H 3700 3150 50  0001 C CNN
	1    3700 3150
	1    0    0    -1  
$EndComp
Text GLabel 4150 2650 2    50   Input ~ 0
PREAMP
Wire Wire Line
	3150 2800 3150 3150
Wire Wire Line
	3700 3050 3700 3150
$Comp
L Regulator_Linear:L78L08_TO92 U2
U 1 1 5E2B3912
P 9150 5200
F 0 "U2" H 9150 5442 50  0000 C CNN
F 1 "L78L06" H 9150 5351 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline_Wide" H 9150 5425 50  0001 C CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/15/55/e5/aa/23/5b/43/fd/CD00000446.pdf/files/CD00000446.pdf/jcr:content/translations/en.CD00000446.pdf" H 9150 5150 50  0001 C CNN
	1    9150 5200
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0108
U 1 1 5E2B5554
P 8750 5100
F 0 "#PWR0108" H 8750 4950 50  0001 C CNN
F 1 "VCC" H 8767 5273 50  0000 C CNN
F 2 "" H 8750 5100 50  0001 C CNN
F 3 "" H 8750 5100 50  0001 C CNN
	1    8750 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 5E2B5D5C
P 8750 5450
F 0 "C9" H 8635 5404 50  0000 R CNN
F 1 "100n" H 8635 5495 50  0000 R CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 8788 5300 50  0001 C CNN
F 3 "~" H 8750 5450 50  0001 C CNN
	1    8750 5450
	1    0    0    1   
$EndComp
$Comp
L Device:C C12
U 1 1 5E2B6075
P 9550 5450
F 0 "C12" H 9665 5496 50  0000 L CNN
F 1 "100n" H 9665 5405 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 9588 5300 50  0001 C CNN
F 3 "~" H 9550 5450 50  0001 C CNN
	1    9550 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C4
U 1 1 5E2B6C47
P 8100 5450
F 0 "C4" H 8218 5496 50  0000 L CNN
F 1 "100u" H 8218 5405 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 8138 5300 50  0001 C CNN
F 3 "~" H 8100 5450 50  0001 C CNN
	1    8100 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C14
U 1 1 5E2B7127
P 10000 5450
F 0 "C14" H 10118 5496 50  0000 L CNN
F 1 "10u" H 10118 5405 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 10038 5300 50  0001 C CNN
F 3 "~" H 10000 5450 50  0001 C CNN
	1    10000 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 5200 8750 5200
Wire Wire Line
	8100 5200 8100 5300
Wire Wire Line
	8750 5100 8750 5200
Connection ~ 8750 5200
Wire Wire Line
	8750 5200 8100 5200
Wire Wire Line
	8750 5200 8750 5300
Wire Wire Line
	9450 5200 9550 5200
Wire Wire Line
	10000 5200 10000 5100
Wire Wire Line
	10000 5200 10000 5300
Connection ~ 10000 5200
Wire Wire Line
	9550 5200 9550 5300
Connection ~ 9550 5200
Wire Wire Line
	9550 5200 10000 5200
$Comp
L power:GND #PWR0110
U 1 1 5E2D052A
P 8100 5700
F 0 "#PWR0110" H 8100 5450 50  0001 C CNN
F 1 "GND" H 8105 5527 50  0000 C CNN
F 2 "" H 8100 5700 50  0001 C CNN
F 3 "" H 8100 5700 50  0001 C CNN
	1    8100 5700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 5E2D0980
P 8750 5700
F 0 "#PWR0111" H 8750 5450 50  0001 C CNN
F 1 "GND" H 8755 5527 50  0000 C CNN
F 2 "" H 8750 5700 50  0001 C CNN
F 3 "" H 8750 5700 50  0001 C CNN
	1    8750 5700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5E2D0E50
P 9150 5700
F 0 "#PWR0112" H 9150 5450 50  0001 C CNN
F 1 "GND" H 9155 5527 50  0000 C CNN
F 2 "" H 9150 5700 50  0001 C CNN
F 3 "" H 9150 5700 50  0001 C CNN
	1    9150 5700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 5E2D1283
P 9550 5700
F 0 "#PWR0113" H 9550 5450 50  0001 C CNN
F 1 "GND" H 9555 5527 50  0000 C CNN
F 2 "" H 9550 5700 50  0001 C CNN
F 3 "" H 9550 5700 50  0001 C CNN
	1    9550 5700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 5E2D1627
P 10000 5700
F 0 "#PWR0114" H 10000 5450 50  0001 C CNN
F 1 "GND" H 10005 5527 50  0000 C CNN
F 2 "" H 10000 5700 50  0001 C CNN
F 3 "" H 10000 5700 50  0001 C CNN
	1    10000 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 5600 10000 5700
Wire Wire Line
	9550 5600 9550 5700
Wire Wire Line
	9150 5500 9150 5700
Wire Wire Line
	8750 5600 8750 5700
Wire Wire Line
	8100 5600 8100 5700
$Comp
L Device:C C17
U 1 1 5E2F4390
P 5800 1900
F 0 "C17" V 5548 1900 50  0000 C CNN
F 1 "100p" V 5639 1900 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 5838 1750 50  0001 C CNN
F 3 "~" H 5800 1900 50  0001 C CNN
	1    5800 1900
	0    1    1    0   
$EndComp
$Comp
L Device:C C15
U 1 1 5E2F4C0B
P 5300 1900
F 0 "C15" V 5048 1900 50  0000 C CNN
F 1 "100p" V 5139 1900 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 5338 1750 50  0001 C CNN
F 3 "~" H 5300 1900 50  0001 C CNN
	1    5300 1900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 5E2F5445
P 7300 3150
F 0 "#PWR0115" H 7300 2900 50  0001 C CNN
F 1 "GND" H 7305 2977 50  0000 C CNN
F 2 "" H 7300 3150 50  0001 C CNN
F 3 "" H 7300 3150 50  0001 C CNN
	1    7300 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 1300 5050 1400
Wire Wire Line
	7300 2700 7300 3150
Wire Wire Line
	5650 1900 5550 1900
Connection ~ 5550 1900
Wire Wire Line
	5550 1900 5450 1900
Wire Wire Line
	5050 1400 5050 1500
Wire Wire Line
	5050 1900 5150 1900
Connection ~ 5050 1400
$Comp
L Device:L_Core_Iron L3
U 1 1 5E30514F
P 5550 1500
F 0 "L3" V 5775 1500 50  0000 C CNN
F 1 "10u" V 5684 1500 50  0000 C CNN
F 2 "Inductor_THT:L_Axial_L5.3mm_D2.2mm_P7.62mm_Horizontal_Vishay_IM-1" H 5550 1500 50  0001 C CNN
F 3 "~" H 5550 1500 50  0001 C CNN
	1    5550 1500
	0    1    -1   0   
$EndComp
Wire Wire Line
	5550 1900 5550 2100
Wire Wire Line
	5400 1500 5050 1500
Connection ~ 5050 1500
Wire Wire Line
	5050 1500 5050 1900
Wire Wire Line
	5700 1500 6050 1500
Wire Wire Line
	6050 1500 6050 1900
Connection ~ 6050 1900
Wire Wire Line
	6050 1900 5950 1900
$Comp
L Device:C C18
U 1 1 5E32E23A
P 6050 2400
F 0 "C18" H 6165 2446 50  0000 L CNN
F 1 "100n" H 6165 2355 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 6088 2250 50  0001 C CNN
F 3 "~" H 6050 2400 50  0001 C CNN
	1    6050 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 2250 6050 1900
$Comp
L Device:C C16
U 1 1 5E330046
P 5300 2900
F 0 "C16" H 5415 2946 50  0000 L CNN
F 1 "100n" H 5415 2855 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 5338 2750 50  0001 C CNN
F 3 "~" H 5300 2900 50  0001 C CNN
	1    5300 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 2650 5300 2750
$Comp
L power:GND #PWR0117
U 1 1 5E3323F6
P 5300 3150
F 0 "#PWR0117" H 5300 2900 50  0001 C CNN
F 1 "GND" H 5305 2977 50  0000 C CNN
F 2 "" H 5300 3150 50  0001 C CNN
F 3 "" H 5300 3150 50  0001 C CNN
	1    5300 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 5E3328B7
P 5050 3150
F 0 "#PWR0118" H 5050 2900 50  0001 C CNN
F 1 "GND" H 5055 2977 50  0000 C CNN
F 2 "" H 5050 3150 50  0001 C CNN
F 3 "" H 5050 3150 50  0001 C CNN
	1    5050 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 3050 5300 3150
$Comp
L Device:R R5
U 1 1 5E335EF9
P 5550 2650
F 0 "R5" V 5343 2650 50  0000 C CNN
F 1 "100k" V 5434 2650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 5480 2650 50  0001 C CNN
F 3 "~" H 5550 2650 50  0001 C CNN
	1    5550 2650
	0    1    1    0   
$EndComp
$Comp
L Device:LED D2
U 1 1 5E336A60
P 5800 2900
F 0 "D2" V 5747 2978 50  0000 L CNN
F 1 "LED" V 5838 2978 50  0000 L CNN
F 2 "LED_THT:LED_D3.0mm" H 5800 2900 50  0001 C CNN
F 3 "~" H 5800 2900 50  0001 C CNN
	1    5800 2900
	0    1    1    0   
$EndComp
$Comp
L Device:LED D3
U 1 1 5E3384DF
P 6050 2900
F 0 "D3" V 5997 2978 50  0000 L CNN
F 1 "LED" V 6088 2978 50  0000 L CNN
F 2 "LED_THT:LED_D3.0mm" H 6050 2900 50  0001 C CNN
F 3 "~" H 6050 2900 50  0001 C CNN
	1    6050 2900
	0    1    1    0   
$EndComp
Wire Wire Line
	6050 2550 6050 2650
Wire Wire Line
	5700 2650 5800 2650
Connection ~ 6050 2650
Wire Wire Line
	6050 2650 6050 2750
Wire Wire Line
	5800 2750 5800 2650
Connection ~ 5800 2650
Wire Wire Line
	5800 2650 6050 2650
Wire Wire Line
	5300 2650 5400 2650
$Comp
L Device:C C19
U 1 1 5E3596B3
P 6400 2900
F 0 "C19" H 6515 2946 50  0000 L CNN
F 1 "100p" H 6515 2855 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 6438 2750 50  0001 C CNN
F 3 "~" H 6400 2900 50  0001 C CNN
	1    6400 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C20
U 1 1 5E359F17
P 6800 2900
F 0 "C20" H 6915 2946 50  0000 L CNN
F 1 "*" H 6915 2855 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 6838 2750 50  0001 C CNN
F 3 "~" H 6800 2900 50  0001 C CNN
	1    6800 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 5E361EE7
P 5800 3150
F 0 "#PWR0119" H 5800 2900 50  0001 C CNN
F 1 "GND" H 5805 2977 50  0000 C CNN
F 2 "" H 5800 3150 50  0001 C CNN
F 3 "" H 5800 3150 50  0001 C CNN
	1    5800 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 5E362308
P 6050 3150
F 0 "#PWR0120" H 6050 2900 50  0001 C CNN
F 1 "GND" H 6055 2977 50  0000 C CNN
F 2 "" H 6050 3150 50  0001 C CNN
F 3 "" H 6050 3150 50  0001 C CNN
	1    6050 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0122
U 1 1 5E362C35
P 6400 3150
F 0 "#PWR0122" H 6400 2900 50  0001 C CNN
F 1 "GND" H 6405 2977 50  0000 C CNN
F 2 "" H 6400 3150 50  0001 C CNN
F 3 "" H 6400 3150 50  0001 C CNN
	1    6400 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0123
U 1 1 5E363005
P 6800 3150
F 0 "#PWR0123" H 6800 2900 50  0001 C CNN
F 1 "GND" H 6805 2977 50  0000 C CNN
F 2 "" H 6800 3150 50  0001 C CNN
F 3 "" H 6800 3150 50  0001 C CNN
	1    6800 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 3050 6400 3150
Wire Wire Line
	6800 3050 6800 3150
Wire Wire Line
	6050 3050 6050 3150
Wire Wire Line
	5800 3050 5800 3150
Text GLabel 7300 1600 0    50   Input ~ 0
PREAMP
$Comp
L Device:R R8
U 1 1 5E398FDF
P 8750 1900
F 0 "R8" V 8957 1900 50  0000 C CNN
F 1 "4.3k" V 8866 1900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 8680 1900 50  0001 C CNN
F 3 "~" H 8750 1900 50  0001 C CNN
	1    8750 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	9500 2200 9400 2200
$Comp
L Device:C C23
U 1 1 5E3B2107
P 9000 2700
F 0 "C23" H 8885 2654 50  0000 R CNN
F 1 "47n" H 8885 2745 50  0000 R CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 9038 2550 50  0001 C CNN
F 3 "~" H 9000 2700 50  0001 C CNN
	1    9000 2700
	-1   0    0    1   
$EndComp
$Comp
L Device:C C22
U 1 1 5E3B2549
P 9250 2200
F 0 "C22" H 9135 2154 50  0000 R CNN
F 1 "2.2n" H 9135 2245 50  0000 R CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 9288 2050 50  0001 C CNN
F 3 "~" H 9250 2200 50  0001 C CNN
	1    9250 2200
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R6
U 1 1 5E3B283E
P 9250 1900
F 0 "R6" V 9457 1900 50  0000 C CNN
F 1 "8.2k" V 9366 1900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 9180 1900 50  0001 C CNN
F 3 "~" H 9250 1900 50  0001 C CNN
	1    9250 1900
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0124
U 1 1 5E3C6334
P 9000 3150
F 0 "#PWR0124" H 9000 2900 50  0001 C CNN
F 1 "GND" H 9005 2977 50  0000 C CNN
F 2 "" H 9000 3150 50  0001 C CNN
F 3 "" H 9000 3150 50  0001 C CNN
	1    9000 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C24
U 1 1 5E3DF54D
P 9750 2300
F 0 "C24" V 9498 2300 50  0000 C CNN
F 1 "100n" V 9589 2300 50  0000 C CNN
F 2 "Capacitor_THT:C_Axial_L3.8mm_D2.6mm_P10.00mm_Horizontal" H 9788 2150 50  0001 C CNN
F 3 "~" H 9750 2300 50  0001 C CNN
	1    9750 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	8400 2300 9500 2300
Wire Wire Line
	9500 2200 9500 2300
Connection ~ 9500 2300
Wire Wire Line
	9500 2300 9600 2300
Wire Wire Line
	8400 2200 8500 2200
$Comp
L power:GND #PWR0125
U 1 1 5E441151
P 10000 3150
F 0 "#PWR0125" H 10000 2900 50  0001 C CNN
F 1 "GND" H 10005 2977 50  0000 C CNN
F 2 "" H 10000 3150 50  0001 C CNN
F 3 "" H 10000 3150 50  0001 C CNN
	1    10000 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 2300 10000 2300
Text GLabel 10250 2750 2    50   Input ~ 0
AF
NoConn ~ 8400 1600
NoConn ~ 8400 1700
NoConn ~ 8400 1800
NoConn ~ 8400 1900
NoConn ~ 8400 2000
NoConn ~ 8400 2500
NoConn ~ 8400 2600
NoConn ~ 8400 2700
$Comp
L Amplifier_Audio:LM386 U1
U 1 1 5E494A14
P 2700 4900
F 0 "U1" H 3044 4946 50  0000 L CNN
F 1 "LM386" H 3044 4855 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_LongPads" H 2800 5000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm386.pdf" H 2900 5100 50  0001 C CNN
	1    2700 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5E496E0B
P 2050 5000
F 0 "C3" V 2302 5000 50  0000 C CNN
F 1 "100n" V 2211 5000 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 2088 4850 50  0001 C CNN
F 3 "~" H 2050 5000 50  0001 C CNN
	1    2050 5000
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0126
U 1 1 5E498A35
P 2600 5700
F 0 "#PWR0126" H 2600 5450 50  0001 C CNN
F 1 "GND" H 2605 5527 50  0000 C CNN
F 2 "" H 2600 5700 50  0001 C CNN
F 3 "" H 2600 5700 50  0001 C CNN
	1    2600 5700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0127
U 1 1 5E498F3E
P 2300 5700
F 0 "#PWR0127" H 2300 5450 50  0001 C CNN
F 1 "GND" H 2305 5527 50  0000 C CNN
F 2 "" H 2300 5700 50  0001 C CNN
F 3 "" H 2300 5700 50  0001 C CNN
	1    2300 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 4800 2300 4800
Wire Wire Line
	2300 4800 2300 5700
Wire Wire Line
	2200 5000 2400 5000
Wire Wire Line
	2600 5200 2600 5700
NoConn ~ 2700 5200
NoConn ~ 2800 5200
$Comp
L Device:R R1
U 1 1 5E4AB727
P 2050 4050
F 0 "R1" V 1843 4050 50  0000 C CNN
F 1 "220" V 1934 4050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1980 4050 50  0001 C CNN
F 3 "~" H 2050 4050 50  0001 C CNN
	1    2050 4050
	0    1    1    0   
$EndComp
$Comp
L Device:CP C6
U 1 1 5E4AE753
P 2300 4300
F 0 "C6" H 2418 4346 50  0000 L CNN
F 1 "10u" H 2418 4255 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 2338 4150 50  0001 C CNN
F 3 "~" H 2300 4300 50  0001 C CNN
	1    2300 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0129
U 1 1 5E4B1555
P 2300 4550
F 0 "#PWR0129" H 2300 4300 50  0001 C CNN
F 1 "GND" H 2305 4377 50  0000 C CNN
F 2 "" H 2300 4550 50  0001 C CNN
F 3 "" H 2300 4550 50  0001 C CNN
	1    2300 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 4050 2300 4050
Wire Wire Line
	2600 4050 2600 4600
Wire Wire Line
	2300 4450 2300 4550
Wire Wire Line
	2300 4150 2300 4050
Connection ~ 2300 4050
Wire Wire Line
	2300 4050 2600 4050
$Comp
L Device:CP C13
U 1 1 5E4E52BC
P 3750 4900
F 0 "C13" V 4005 4900 50  0000 C CNN
F 1 "100u" V 3914 4900 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 3788 4750 50  0001 C CNN
F 3 "~" H 3750 4900 50  0001 C CNN
	1    3750 4900
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 5E4ED9F7
P 3450 5150
F 0 "R3" H 3520 5196 50  0000 L CNN
F 1 "220" H 3520 5105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 3380 5150 50  0001 C CNN
F 3 "~" H 3450 5150 50  0001 C CNN
	1    3450 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 5E4EE87E
P 3450 5450
F 0 "C11" H 3335 5404 50  0000 R CNN
F 1 "100n" H 3335 5495 50  0000 R CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 3488 5300 50  0001 C CNN
F 3 "~" H 3450 5450 50  0001 C CNN
	1    3450 5450
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR0130
U 1 1 5E4F5845
P 3450 5700
F 0 "#PWR0130" H 3450 5450 50  0001 C CNN
F 1 "GND" H 3455 5527 50  0000 C CNN
F 2 "" H 3450 5700 50  0001 C CNN
F 3 "" H 3450 5700 50  0001 C CNN
	1    3450 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 4900 3450 4900
Wire Wire Line
	3450 4900 3450 5000
Connection ~ 3450 4900
Wire Wire Line
	3450 4900 3600 4900
Wire Wire Line
	3450 5600 3450 5700
$Comp
L power:VCC #PWR0131
U 1 1 5E52D074
P 1800 3950
F 0 "#PWR0131" H 1800 3800 50  0001 C CNN
F 1 "VCC" H 1817 4123 50  0000 C CNN
F 2 "" H 1800 3950 50  0001 C CNN
F 3 "" H 1800 3950 50  0001 C CNN
	1    1800 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 4050 1800 4050
Wire Wire Line
	1800 4050 1800 3950
Text GLabel 1800 5000 0    50   Input ~ 0
AF
Wire Wire Line
	1800 5000 1900 5000
Wire Wire Line
	4000 4900 3900 4900
$Comp
L power:GND #PWR0132
U 1 1 5E590042
P 3900 5700
F 0 "#PWR0132" H 3900 5450 50  0001 C CNN
F 1 "GND" H 3905 5527 50  0000 C CNN
F 2 "" H 3900 5700 50  0001 C CNN
F 3 "" H 3900 5700 50  0001 C CNN
	1    3900 5700
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 5E59628B
P 1750 2350
F 0 "J2" H 1668 2025 50  0000 C CNN
F 1 "MAG" H 1668 2116 50  0000 C CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 1750 2350 50  0001 C CNN
F 3 "~" H 1750 2350 50  0001 C CNN
	1    1750 2350
	-1   0    0    1   
$EndComp
$Comp
L Device:C C26
U 1 1 5E77A552
P 3950 2650
F 0 "C26" V 3698 2650 50  0000 C CNN
F 1 "1n" V 3789 2650 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 3988 2500 50  0001 C CNN
F 3 "~" H 3950 2650 50  0001 C CNN
	1    3950 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	4150 2650 4100 2650
Wire Wire Line
	6800 2650 6800 2750
Wire Wire Line
	6400 2750 6400 2650
Connection ~ 6400 2650
Wire Wire Line
	6400 2650 6800 2650
NoConn ~ 2700 4600
$Comp
L power:+6V #PWR03
U 1 1 5E9EC69B
P 10000 5100
F 0 "#PWR03" H 10000 4950 50  0001 C CNN
F 1 "+6V" H 10015 5273 50  0000 C CNN
F 2 "" H 10000 5100 50  0001 C CNN
F 3 "" H 10000 5100 50  0001 C CNN
	1    10000 5100
	1    0    0    -1  
$EndComp
$Comp
L power:+6V #PWR05
U 1 1 5E9ED563
P 5050 1300
F 0 "#PWR05" H 5050 1150 50  0001 C CNN
F 1 "+6V" H 5065 1473 50  0000 C CNN
F 2 "" H 5050 1300 50  0001 C CNN
F 3 "" H 5050 1300 50  0001 C CNN
	1    5050 1300
	1    0    0    -1  
$EndComp
$Comp
L power:+6V #PWR01
U 1 1 5E9EDD46
P 3700 1550
F 0 "#PWR01" H 3700 1400 50  0001 C CNN
F 1 "+6V" H 3715 1723 50  0000 C CNN
F 2 "" H 3700 1550 50  0001 C CNN
F 3 "" H 3700 1550 50  0001 C CNN
	1    3700 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 2250 3400 2250
Wire Wire Line
	3700 2450 3700 2650
Wire Wire Line
	3800 2650 3700 2650
Connection ~ 3700 2650
Wire Wire Line
	3700 2650 3700 2750
Wire Wire Line
	3150 2250 3150 2500
$Comp
L Device:C C8
U 1 1 5ED63BDC
P 3950 1600
F 0 "C8" V 3698 1600 50  0000 C CNN
F 1 "100n" V 3789 1600 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 3988 1450 50  0001 C CNN
F 3 "~" H 3950 1600 50  0001 C CNN
	1    3950 1600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5ED64285
P 4200 1700
F 0 "#PWR06" H 4200 1450 50  0001 C CNN
F 1 "GND" H 4205 1527 50  0000 C CNN
F 2 "" H 4200 1700 50  0001 C CNN
F 3 "" H 4200 1700 50  0001 C CNN
	1    4200 1700
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 5EEABF11
P 4200 4900
F 0 "J3" H 4280 4892 50  0000 L CNN
F 1 "HP" H 4280 4801 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 4200 4900 50  0001 C CNN
F 3 "~" H 4200 4900 50  0001 C CNN
	1    4200 4900
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J4
U 1 1 5EEAC8A2
P 7600 5200
F 0 "J4" H 7680 5192 50  0000 L CNN
F 1 "9V" H 7680 5101 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 7600 5200 50  0001 C CNN
F 3 "~" H 7600 5200 50  0001 C CNN
	1    7600 5200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8400 1400 8500 1400
$Comp
L Device:C C21
U 1 1 5E377BC2
P 8650 1400
F 0 "C21" H 8535 1354 50  0000 R CNN
F 1 "100n" H 8535 1445 50  0000 R CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 8688 1250 50  0001 C CNN
F 3 "~" H 8650 1400 50  0001 C CNN
	1    8650 1400
	0    -1   1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 5E386FA8
P 9000 1650
F 0 "R7" H 8930 1604 50  0000 R CNN
F 1 "820" H 8930 1695 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8930 1650 50  0001 C CNN
F 3 "~" H 9000 1650 50  0001 C CNN
	1    9000 1650
	1    0    0    1   
$EndComp
Wire Wire Line
	8600 1900 8500 1900
Wire Wire Line
	8500 1900 8500 2200
Connection ~ 8500 2200
Wire Wire Line
	8500 2200 9100 2200
Wire Wire Line
	9400 1900 9500 1900
Wire Wire Line
	9500 1900 9500 2200
Connection ~ 9500 2200
Wire Wire Line
	8800 1400 9000 1400
Wire Wire Line
	9000 1400 9000 1500
Wire Wire Line
	9000 2550 9000 1900
Wire Wire Line
	8900 1900 9000 1900
Connection ~ 9000 1900
Wire Wire Line
	9000 1900 9000 1800
Wire Wire Line
	9100 1900 9000 1900
Wire Wire Line
	9000 3150 9000 2850
Wire Wire Line
	5050 1400 7400 1400
Wire Wire Line
	7400 2100 5550 2100
Wire Wire Line
	7300 1600 7400 1600
Wire Wire Line
	7400 2700 7300 2700
Wire Wire Line
	6050 1900 7400 1900
$Comp
L DM3MAT:MC3361 U3
U 1 1 5E28119E
P 7900 1200
F 0 "U3" H 7900 1265 50  0000 C CNN
F 1 "MC3361" H 7900 1174 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_LongPads" H 7900 1200 50  0001 C CNN
F 3 "" H 7900 1200 50  0001 C CNN
	1    7900 1200
	1    0    0    -1  
$EndComp
$Comp
L DM3MAT:BF256C Q1
U 1 1 5E325846
P 3600 2250
F 0 "Q1" H 3790 2296 50  0000 L CNN
F 1 "BF256C" H 3790 2205 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 3800 2175 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BF/BF245A.pdf" H 3600 2250 50  0001 L CNN
	1    3600 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5E368333
P 2650 2650
F 0 "C2" H 2765 2696 50  0000 L CNN
F 1 "220p" H 2765 2605 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 2688 2500 50  0001 C CNN
F 3 "~" H 2650 2650 50  0001 C CNN
	1    2650 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:CTRIM C1
U 1 1 5E368DE7
P 2250 2650
F 0 "C1" H 2365 2696 50  0000 L CNN
F 1 "30p" H 2365 2605 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L7.0mm_W4.5mm_P5.00mm" H 2250 2650 50  0001 C CNN
F 3 "~" H 2250 2650 50  0001 C CNN
	1    2250 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5E373D7E
P 2650 3150
F 0 "#PWR0101" H 2650 2900 50  0001 C CNN
F 1 "GND" H 2655 2977 50  0000 C CNN
F 2 "" H 2650 3150 50  0001 C CNN
F 3 "" H 2650 3150 50  0001 C CNN
	1    2650 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5E37418E
P 2250 3150
F 0 "#PWR0102" H 2250 2900 50  0001 C CNN
F 1 "GND" H 2255 2977 50  0000 C CNN
F 2 "" H 2250 3150 50  0001 C CNN
F 3 "" H 2250 3150 50  0001 C CNN
	1    2250 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 2250 2250 2250
Wire Wire Line
	2650 2500 2650 2250
Wire Wire Line
	2650 2800 2650 3150
Wire Wire Line
	2250 2500 2250 2250
Connection ~ 2250 2250
Wire Wire Line
	2250 2250 2650 2250
Wire Wire Line
	2250 2800 2250 3150
$Comp
L Device:C C5
U 1 1 5E3D0BB1
P 2900 2250
F 0 "C5" V 2648 2250 50  0000 C CNN
F 1 "100n" V 2739 2250 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 2938 2100 50  0001 C CNN
F 3 "~" H 2900 2250 50  0001 C CNN
	1    2900 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	3050 2250 3150 2250
Connection ~ 3150 2250
Wire Wire Line
	2750 2250 2650 2250
Connection ~ 2650 2250
$Comp
L Device:R_POT RV1
U 1 1 5E3F54E2
P 5050 2650
F 0 "RV1" H 4980 2696 50  0000 R CNN
F 1 "10k" H 4980 2605 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alps_RK097_Single_Horizontal" H 5050 2650 50  0001 C CNN
F 3 "~" H 5050 2650 50  0001 C CNN
	1    5050 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 2650 5300 2650
Connection ~ 5300 2650
Wire Wire Line
	5050 2500 5050 1900
Connection ~ 5050 1900
Wire Wire Line
	5050 2800 5050 3150
$Comp
L Device:R_POT RV2
U 1 1 5E424AD4
P 10000 2750
F 0 "RV2" H 9930 2796 50  0000 R CNN
F 1 "10k" H 9930 2705 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alps_RK097_Single_Horizontal" H 10000 2750 50  0001 C CNN
F 3 "~" H 10000 2750 50  0001 C CNN
	1    10000 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 2600 10000 2300
Wire Wire Line
	10000 2900 10000 3150
Wire Wire Line
	10150 2750 10250 2750
$Comp
L Switch:SW_Push SW1
U 1 1 5E4BA11F
P 2850 1800
F 0 "SW1" H 2850 2085 50  0000 C CNN
F 1 "SW_Push" H 2850 1994 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Tactile_SPST_Angled_PTS645Vx83-2LFS" H 2850 2000 50  0001 C CNN
F 3 "~" H 2850 2000 50  0001 C CNN
	1    2850 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 1550 3700 1600
Wire Wire Line
	3700 1600 3800 1600
Connection ~ 3700 1600
Wire Wire Line
	3700 1600 3700 2050
Wire Wire Line
	4100 1600 4200 1600
Wire Wire Line
	4200 1600 4200 1700
Wire Wire Line
	3050 1800 3150 1800
Wire Wire Line
	3150 1800 3150 2250
$Comp
L power:GND #PWR0103
U 1 1 5E50D710
P 2050 3150
F 0 "#PWR0103" H 2050 2900 50  0001 C CNN
F 1 "GND" H 2055 2977 50  0000 C CNN
F 2 "" H 2050 3150 50  0001 C CNN
F 3 "" H 2050 3150 50  0001 C CNN
	1    2050 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 2350 2050 2350
Wire Wire Line
	2050 2350 2050 3150
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5E51F9CD
P 1850 1800
F 0 "H1" V 2087 1803 50  0000 C CNN
F 1 "EL" V 1996 1803 50  0000 C CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_Pad_Via" H 1850 1800 50  0001 C CNN
F 3 "~" H 1850 1800 50  0001 C CNN
	1    1850 1800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1950 1800 2650 1800
Wire Wire Line
	6050 2650 6400 2650
Wire Wire Line
	4000 5000 3900 5000
Wire Wire Line
	3900 5000 3900 5700
$Comp
L power:GND #PWR0104
U 1 1 5E62C54B
P 7900 5700
F 0 "#PWR0104" H 7900 5450 50  0001 C CNN
F 1 "GND" H 7905 5527 50  0000 C CNN
F 2 "" H 7900 5700 50  0001 C CNN
F 3 "" H 7900 5700 50  0001 C CNN
	1    7900 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 5300 7900 5300
Wire Wire Line
	7900 5300 7900 5700
Wire Wire Line
	7800 5200 8100 5200
Connection ~ 8100 5200
$EndSCHEMATC
