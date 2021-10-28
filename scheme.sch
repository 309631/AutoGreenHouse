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
L MCU_Module:Arduino_UNO_R3 A?
U 1 1 617B2807
P 4500 3300
F 0 "A?" V 4454 4344 50  0000 L CNN
F 1 "Arduino_UNO_R3" V 4545 4344 50  0000 L CNN
F 2 "Module:Arduino_UNO_R3" H 4500 3300 50  0001 C CIN
F 3 "https://www.arduino.cc/en/Main/arduinoBoardUno" H 4500 3300 50  0001 C CNN
	1    4500 3300
	0    1    1    0   
$EndComp
$Comp
L Display_Character:NHD-C0220BIZ U?
U 1 1 617B4213
P 6850 4800
F 0 "U?" H 6850 5481 50  0000 C CNN
F 1 "NHD-C0220BIZ" H 6850 5390 50  0000 C CNN
F 2 "Display:NHD-C0220BiZ" H 6850 4200 50  0001 C CNN
F 3 "http://www.newhavendisplay.com/specs/NHD-C0220BiZ-FSW-FBW-3V3M.pdf" H 6550 5400 50  0001 C CNN
	1    6850 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 4700 4100 4700
Wire Wire Line
	4100 4700 4100 3800
Wire Wire Line
	6450 4800 4000 4800
Wire Wire Line
	4000 4800 4000 3800
Wire Wire Line
	6850 5300 7600 5300
Wire Wire Line
	7600 5300 7600 3500
Wire Wire Line
	5500 3500 7300 3500
$Comp
L Sensor:DHT11 U?
U 1 1 617BD6BF
P 4650 1850
F 0 "U?" V 4269 1850 50  0000 C CNN
F 1 "DHT11" V 4360 1850 50  0000 C CNN
F 2 "Sensor:Aosong_DHT11_5.5x12.0_P2.54mm" H 4650 1450 50  0001 C CNN
F 3 "http://akizukidenshi.com/download/ds/aosong/DHT11.pdf" H 4800 2100 50  0001 C CNN
	1    4650 1850
	0    1    1    0   
$EndComp
Wire Wire Line
	3400 3200 3400 1850
Wire Wire Line
	3400 1850 4350 1850
Connection ~ 4350 1850
Wire Wire Line
	4350 1850 4400 1850
Wire Wire Line
	4950 1850 7300 1850
Wire Wire Line
	7300 1850 7300 3500
Connection ~ 7300 3500
Wire Wire Line
	7300 3500 7600 3500
Wire Wire Line
	4300 2800 4300 2150
Wire Wire Line
	4300 2150 4650 2150
$EndSCHEMATC
