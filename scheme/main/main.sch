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
L MCU_Module:Arduino_UNO_R2 A?
U 1 1 6197DC59
P 4150 3550
F 0 "A?" V 4196 2406 50  0000 R CNN
F 1 "Arduino_UNO_R2" V 4105 2406 50  0000 R CNN
F 2 "Module:Arduino_UNO_R2" H 4150 3550 50  0001 C CIN
F 3 "https://www.arduino.cc/en/Main/arduinoBoardUno" H 4150 3550 50  0001 C CNN
	1    4150 3550
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_PHOTO R?
U 1 1 6197FF27
P 6850 3500
F 0 "R?" H 6920 3546 50  0000 L CNN
F 1 "R_PHOTO" H 6920 3455 50  0000 L CNN
F 2 "" V 6900 3250 50  0001 L CNN
F 3 "~" H 6850 3450 50  0001 C CNN
	1    6850 3500
	1    0    0    -1  
$EndComp
$Comp
L Display_Graphic:EA_DOGS104B-A U?
U 1 1 619818A5
P 6000 2350
F 0 "U?" H 6000 3031 50  0000 C CNN
F 1 "EA_DOGS104B-A" H 6000 2940 50  0000 C CNN
F 2 "Display:EA_DOGS104X-A" H 6000 1750 50  0001 C CNN
F 3 "http://www.lcd-module.com/fileadmin/eng/pdf/doma/dogs104e.pdf" H 6400 2050 50  0001 C CNN
	1    6000 2350
	1    0    0    -1  
$EndComp
$Comp
L Sensor:DHT11 U?
U 1 1 6197F49D
P 4400 4650
F 0 "U?" H 4156 4696 50  0000 R CNN
F 1 "DHT11" H 4156 4605 50  0000 R CNN
F 2 "Sensor:Aosong_DHT11_5.5x12.0_P2.54mm" H 4400 4250 50  0001 C CNN
F 3 "http://akizukidenshi.com/download/ds/aosong/DHT11.pdf" H 4550 4900 50  0001 C CNN
	1    4400 4650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5250 3650 5250 4650
Wire Wire Line
	5250 4650 4700 4650
Wire Wire Line
	4150 4650 4100 4650
Wire Wire Line
	2800 4650 2800 3350
Wire Wire Line
	2800 3350 3150 3350
Connection ~ 4100 4650
Wire Wire Line
	4100 4650 2800 4650
Wire Wire Line
	4350 4350 4400 4350
Wire Wire Line
	4350 4050 4350 4350
$EndSCHEMATC
