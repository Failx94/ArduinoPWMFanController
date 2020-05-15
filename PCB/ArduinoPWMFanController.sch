EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Module:Arduino_UNO_R3 A1
U 1 1 5EAAD134
P 4150 2550
F 0 "A1" H 4150 3731 50  0000 C CNN
F 1 "Arduino_UNO_R3" H 4150 3640 50  0000 C CNN
F 2 "Module:Arduino_UNO_R3" H 4150 2550 50  0001 C CIN
F 3 "https://www.arduino.cc/en/Main/arduinoBoardUno" H 4150 2550 50  0001 C CNN
F 4 "Arduino" H 4150 2550 50  0001 C CNN "Name"
	1    4150 2550
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0101
U 1 1 5EAAFD24
P 4250 1250
F 0 "#PWR0101" H 4250 1100 50  0001 C CNN
F 1 "+3.3V" H 4265 1423 50  0000 C CNN
F 2 "" H 4250 1250 50  0001 C CNN
F 3 "" H 4250 1250 50  0001 C CNN
	1    4250 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 1550 4250 1250
$Comp
L power:+5V #PWR0102
U 1 1 5EAB2866
P 4350 1250
F 0 "#PWR0102" H 4350 1100 50  0001 C CNN
F 1 "+5V" H 4365 1423 50  0000 C CNN
F 2 "" H 4350 1250 50  0001 C CNN
F 3 "" H 4350 1250 50  0001 C CNN
	1    4350 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 1250 4350 1550
$Comp
L power:GND #PWR0103
U 1 1 5EAB36A8
P 4250 3750
F 0 "#PWR0103" H 4250 3500 50  0001 C CNN
F 1 "GND" H 4255 3577 50  0000 C CNN
F 2 "" H 4250 3750 50  0001 C CNN
F 3 "" H 4250 3750 50  0001 C CNN
	1    4250 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5EAB3F5E
P 4150 3750
F 0 "#PWR0104" H 4150 3500 50  0001 C CNN
F 1 "GND" H 4155 3577 50  0000 C CNN
F 2 "" H 4150 3750 50  0001 C CNN
F 3 "" H 4150 3750 50  0001 C CNN
	1    4150 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5EAB46C0
P 4050 3750
F 0 "#PWR0105" H 4050 3500 50  0001 C CNN
F 1 "GND" H 4055 3577 50  0000 C CNN
F 2 "" H 4050 3750 50  0001 C CNN
F 3 "" H 4050 3750 50  0001 C CNN
	1    4050 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 3650 4050 3750
Wire Wire Line
	4150 3650 4150 3750
Wire Wire Line
	4250 3650 4250 3750
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 5EAB70E6
P 5350 2400
F 0 "J1" H 5458 2581 50  0000 C CNN
F 1 "Conn_01x02_Male" H 5458 2490 50  0000 C CNN
F 2 "JST:JST_EH_B2B-EH-A_1x02_P2.50mm_Vertical" H 5350 2400 50  0001 C CNN
F 3 "~" H 5350 2400 50  0001 C CNN
F 4 "Temperatur" H 5350 2400 50  0001 C CNN "Name"
	1    5350 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5EAC1448
P 5550 2800
F 0 "R1" H 5620 2846 50  0000 L CNN
F 1 "100k" H 5620 2755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 5480 2800 50  0001 C CNN
F 3 "~" H 5550 2800 50  0001 C CNN
	1    5550 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5EAC48C8
P 5550 3050
F 0 "#PWR02" H 5550 2800 50  0001 C CNN
F 1 "GND" H 5555 2877 50  0000 C CNN
F 2 "" H 5550 3050 50  0001 C CNN
F 3 "" H 5550 3050 50  0001 C CNN
	1    5550 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 2950 5550 3050
$Comp
L power:+5V #PWR01
U 1 1 5EAC4FD0
P 5550 2250
F 0 "#PWR01" H 5550 2100 50  0001 C CNN
F 1 "+5V" H 5565 2423 50  0000 C CNN
F 2 "" H 5550 2250 50  0001 C CNN
F 3 "" H 5550 2250 50  0001 C CNN
	1    5550 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 2400 5550 2250
$Comp
L Connector:Conn_01x02_Male J11
U 1 1 5EB4596D
P 3600 1150
F 0 "J11" H 3708 1331 50  0000 C CNN
F 1 "Conn_01x02_Male" H 3708 1240 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 3600 1150 50  0001 C CNN
F 3 "~" H 3600 1150 50  0001 C CNN
F 4 "Vin" H 3600 1150 50  0001 C CNN "Name"
	1    3600 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 1150 4050 1150
Wire Wire Line
	4050 1150 4050 1550
$Comp
L power:GND #PWR020
U 1 1 5EB488D2
P 3800 1350
F 0 "#PWR020" H 3800 1100 50  0001 C CNN
F 1 "GND" H 3805 1177 50  0000 C CNN
F 2 "" H 3800 1350 50  0001 C CNN
F 3 "" H 3800 1350 50  0001 C CNN
	1    3800 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 1250 3800 1350
$Comp
L Device:CP C1
U 1 1 5EB8B91F
P 6550 1300
F 0 "C1" H 6668 1346 50  0000 L CNN
F 1 "470u" H 6668 1255 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 6588 1150 50  0001 C CNN
F 3 "~" H 6550 1300 50  0001 C CNN
	1    6550 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR030
U 1 1 5EB8C723
P 6550 1550
F 0 "#PWR030" H 6550 1300 50  0001 C CNN
F 1 "GND" H 6555 1377 50  0000 C CNN
F 2 "" H 6550 1550 50  0001 C CNN
F 3 "" H 6550 1550 50  0001 C CNN
	1    6550 1550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR029
U 1 1 5EB8D1B5
P 6550 1000
F 0 "#PWR029" H 6550 850 50  0001 C CNN
F 1 "+5V" H 6565 1173 50  0000 C CNN
F 2 "" H 6550 1000 50  0001 C CNN
F 3 "" H 6550 1000 50  0001 C CNN
	1    6550 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 1000 6550 1150
Wire Wire Line
	6550 1450 6550 1550
Wire Wire Line
	5550 2500 5550 2550
Wire Wire Line
	4650 2550 5550 2550
Connection ~ 5550 2550
Wire Wire Line
	5550 2550 5550 2650
$Comp
L power:+12V #PWR0106
U 1 1 5EBF692B
P 4050 950
F 0 "#PWR0106" H 4050 800 50  0001 C CNN
F 1 "+12V" H 4065 1123 50  0000 C CNN
F 2 "" H 4050 950 50  0001 C CNN
F 3 "" H 4050 950 50  0001 C CNN
	1    4050 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 950  4050 1150
Connection ~ 4050 1150
$Comp
L Connector_Generic:Conn_01x04 J2
U 1 1 5EBF75FA
P 2000 1900
F 0 "J2" H 1918 1475 50  0000 C CNN
F 1 "Conn_01x04" H 1918 1566 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 2000 1900 50  0001 C CNN
F 3 "~" H 2000 1900 50  0001 C CNN
	1    2000 1900
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J3
U 1 1 5EBF8BFF
P 2000 2550
F 0 "J3" H 1918 2125 50  0000 C CNN
F 1 "Conn_01x04" H 1918 2216 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 2000 2550 50  0001 C CNN
F 3 "~" H 2000 2550 50  0001 C CNN
	1    2000 2550
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J4
U 1 1 5EBF9566
P 2000 3200
F 0 "J4" H 1918 2775 50  0000 C CNN
F 1 "Conn_01x04" H 1918 2866 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 2000 3200 50  0001 C CNN
F 3 "~" H 2000 3200 50  0001 C CNN
	1    2000 3200
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J5
U 1 1 5EBFA072
P 2000 3800
F 0 "J5" H 1918 3375 50  0000 C CNN
F 1 "Conn_01x04" H 1918 3466 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 2000 3800 50  0001 C CNN
F 3 "~" H 2000 3800 50  0001 C CNN
	1    2000 3800
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5EBFC7A3
P 2400 2000
F 0 "#PWR0107" H 2400 1750 50  0001 C CNN
F 1 "GND" H 2405 1827 50  0000 C CNN
F 2 "" H 2400 2000 50  0001 C CNN
F 3 "" H 2400 2000 50  0001 C CNN
	1    2400 2000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5EBFD151
P 2400 2650
F 0 "#PWR0108" H 2400 2400 50  0001 C CNN
F 1 "GND" H 2405 2477 50  0000 C CNN
F 2 "" H 2400 2650 50  0001 C CNN
F 3 "" H 2400 2650 50  0001 C CNN
	1    2400 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5EBFD629
P 2400 3300
F 0 "#PWR0109" H 2400 3050 50  0001 C CNN
F 1 "GND" H 2405 3127 50  0000 C CNN
F 2 "" H 2400 3300 50  0001 C CNN
F 3 "" H 2400 3300 50  0001 C CNN
	1    2400 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5EBFDD2D
P 2400 3900
F 0 "#PWR0110" H 2400 3650 50  0001 C CNN
F 1 "GND" H 2405 3727 50  0000 C CNN
F 2 "" H 2400 3900 50  0001 C CNN
F 3 "" H 2400 3900 50  0001 C CNN
	1    2400 3900
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0111
U 1 1 5EBFE5DC
P 2400 1900
F 0 "#PWR0111" H 2400 1750 50  0001 C CNN
F 1 "+12V" H 2415 2073 50  0000 C CNN
F 2 "" H 2400 1900 50  0001 C CNN
F 3 "" H 2400 1900 50  0001 C CNN
	1    2400 1900
	0    1    1    0   
$EndComp
$Comp
L power:+12V #PWR0112
U 1 1 5EBFEA0A
P 2400 2550
F 0 "#PWR0112" H 2400 2400 50  0001 C CNN
F 1 "+12V" V 2415 2678 50  0000 L CNN
F 2 "" H 2400 2550 50  0001 C CNN
F 3 "" H 2400 2550 50  0001 C CNN
	1    2400 2550
	0    1    1    0   
$EndComp
$Comp
L power:+12V #PWR0113
U 1 1 5EBFF59C
P 2400 3200
F 0 "#PWR0113" H 2400 3050 50  0001 C CNN
F 1 "+12V" V 2415 3328 50  0000 L CNN
F 2 "" H 2400 3200 50  0001 C CNN
F 3 "" H 2400 3200 50  0001 C CNN
	1    2400 3200
	0    1    1    0   
$EndComp
$Comp
L power:+12V #PWR0114
U 1 1 5EBFF756
P 2400 3800
F 0 "#PWR0114" H 2400 3650 50  0001 C CNN
F 1 "+12V" V 2415 3928 50  0000 L CNN
F 2 "" H 2400 3800 50  0001 C CNN
F 3 "" H 2400 3800 50  0001 C CNN
	1    2400 3800
	0    1    1    0   
$EndComp
Wire Wire Line
	2200 3900 2400 3900
Wire Wire Line
	2400 3800 2200 3800
Wire Wire Line
	2200 3200 2400 3200
Wire Wire Line
	2400 3300 2200 3300
Wire Wire Line
	2400 2650 2200 2650
Wire Wire Line
	2200 2550 2400 2550
Wire Wire Line
	2200 2000 2400 2000
Wire Wire Line
	2400 1900 2200 1900
Wire Wire Line
	3650 2550 2850 2550
Wire Wire Line
	2850 2550 2850 2350
Wire Wire Line
	2850 2350 2200 2350
Wire Wire Line
	2850 2350 2850 1700
Wire Wire Line
	2850 1700 2200 1700
Connection ~ 2850 2350
Wire Wire Line
	2850 2550 2850 3000
Wire Wire Line
	2850 3000 2200 3000
Connection ~ 2850 2550
Wire Wire Line
	2850 3000 2850 3600
Wire Wire Line
	2850 3600 2200 3600
Connection ~ 2850 3000
Wire Wire Line
	2200 1800 3450 1800
Wire Wire Line
	3450 1800 3450 2150
Wire Wire Line
	3450 2150 3650 2150
Wire Wire Line
	3650 2350 2950 2350
Wire Wire Line
	2950 2350 2950 2450
Wire Wire Line
	2950 2450 2200 2450
Wire Wire Line
	2200 3100 3450 3100
Wire Wire Line
	3450 3100 3450 2650
Wire Wire Line
	3450 2650 3650 2650
Wire Wire Line
	3650 2750 3500 2750
Wire Wire Line
	3500 2750 3500 3700
Wire Wire Line
	3500 3700 2200 3700
$EndSCHEMATC
