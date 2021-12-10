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
NoConn ~ 3050 2250
NoConn ~ 1850 2250
$Comp
L TMCS1100A2QDR:TMCS1100A2QDR IC?
U 1 1 612D2F42
P 6450 1100
F 0 "IC?" H 7050 1365 50  0000 C CNN
F 1 "TMCS1100A2QDR" H 7050 1274 50  0000 C CNN
F 2 "SOIC127P600X175-8N" H 7500 1200 50  0001 L CNN
F 3 "https://www.ti.com/lit/gpn/TMCS1100" H 7500 1100 50  0001 L CNN
F 4 "Board Mount Current Sensors Precision isolated current sensor with external reference" H 7500 1000 50  0001 L CNN "Description"
F 5 "1.75" H 7500 900 50  0001 L CNN "Height"
F 6 "Texas Instruments" H 7500 800 50  0001 L CNN "Manufacturer_Name"
F 7 "TMCS1100A2QDR" H 7500 700 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "595-TMCS1100A2QDR" H 7500 600 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/Texas-Instruments/TMCS1100A2QDR?qs=sPbYRqrBIVnDChUnLpnImg%3D%3D" H 7500 500 50  0001 L CNN "Mouser Price/Stock"
F 10 "TMCS1100A2QDR" H 7500 400 50  0001 L CNN "Arrow Part Number"
F 11 "https://www.arrow.com/en/products/tmcs1100a2qdr/texas-instruments" H 7500 300 50  0001 L CNN "Arrow Price/Stock"
	1    6450 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 1200 6450 1100
Wire Wire Line
	6450 1300 6450 1400
$Comp
L power:+12V #PWR0103
U 1 1 612D4516
P 6450 1050
F 0 "#PWR0103" H 6450 900 50  0001 C CNN
F 1 "+12V" H 6465 1223 50  0000 C CNN
F 2 "" H 6450 1050 50  0001 C CNN
F 3 "" H 6450 1050 50  0001 C CNN
	1    6450 1050
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0104
U 1 1 612D4F4C
P 6450 1450
F 0 "#PWR0104" H 6450 1300 50  0001 C CNN
F 1 "VCC" H 6467 1623 50  0000 C CNN
F 2 "" H 6450 1450 50  0001 C CNN
F 3 "" H 6450 1450 50  0001 C CNN
	1    6450 1450
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 612D6EE6
P 7750 1450
F 0 "#PWR0105" H 7750 1200 50  0001 C CNN
F 1 "GND" H 7755 1277 50  0000 C CNN
F 2 "" H 7750 1450 50  0001 C CNN
F 3 "" H 7750 1450 50  0001 C CNN
	1    7750 1450
	1    0    0    -1  
$EndComp
Text GLabel 7750 1200 2    50   Input ~ 0
Vout
Wire Wire Line
	7750 1300 7750 1400
Wire Wire Line
	7650 1400 7750 1400
Connection ~ 7750 1400
Wire Wire Line
	7750 1400 7750 1450
Wire Wire Line
	7650 1300 7750 1300
Wire Wire Line
	7750 1200 7650 1200
$Comp
L power:+3.3V #PWR0106
U 1 1 612DA01B
P 7750 1050
F 0 "#PWR0106" H 7750 900 50  0001 C CNN
F 1 "+3.3V" H 7765 1223 50  0000 C CNN
F 2 "" H 7750 1050 50  0001 C CNN
F 3 "" H 7750 1050 50  0001 C CNN
	1    7750 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 1100 7750 1100
Wire Wire Line
	7750 1100 7750 1050
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 612DB0D8
P 5500 2800
F 0 "J?" V 5464 2612 50  0000 R CNN
F 1 "Screw_Terminal_01x02" V 5373 2612 50  0000 R CNN
F 2 "" H 5500 2800 50  0001 C CNN
F 3 "~" H 5500 2800 50  0001 C CNN
	1    5500 2800
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 612DCC3E
P 2050 900
F 0 "J?" V 2014 712 50  0000 R CNN
F 1 "Screw_Terminal_01x02" H 1923 712 50  0000 R CNN
F 2 "" H 2050 900 50  0001 C CNN
F 3 "~" H 2050 900 50  0001 C CNN
	1    2050 900 
	-1   0    0    1   
$EndComp
Wire Wire Line
	1850 2550 1500 2550
$Comp
L power:Earth #PWR0101
U 1 1 612D0EEB
P 1700 2450
F 0 "#PWR0101" H 1700 2200 50  0001 C CNN
F 1 "Earth" H 1700 2300 50  0001 C CNN
F 2 "" H 1700 2450 50  0001 C CNN
F 3 "~" H 1700 2450 50  0001 C CNN
	1    1700 2450
	1    0    0    -1  
$EndComp
Connection ~ 1500 2350
Wire Wire Line
	1850 2350 1500 2350
Wire Wire Line
	1500 2550 1500 2350
Wire Wire Line
	1850 2450 1700 2450
$Comp
L TC4425AVOA:TC4425AVOA IC?
U 1 1 612E1CB6
P 1850 2250
F 0 "IC?" H 2450 2515 50  0000 C CNN
F 1 "TC4425AVOA" H 2450 2424 50  0000 C CNN
F 2 "SOIC127P600X175-8N" H 2900 2350 50  0001 L CNN
F 3 "" H 2900 2250 50  0001 L CNN
F 4 "Microchip TC4425AVOA, Dual MOSFET Power Driver 4.5A, 4.5  18 V, 8-Pin SOIC" H 2900 2150 50  0001 L CNN "Description"
F 5 "" H 2900 2050 50  0001 L CNN "Height"
F 6 "Microchip" H 2900 1950 50  0001 L CNN "Manufacturer_Name"
F 7 "TC4425AVOA" H 2900 1850 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "579-TC4425AVOA" H 2900 1750 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/Microchip-Technology/TC4425AVOA?qs=AkCjCAp%252BzjS5wj%252ByR4sY7g%3D%3D" H 2900 1650 50  0001 L CNN "Mouser Price/Stock"
F 10 "TC4425AVOA" H 2900 1550 50  0001 L CNN "Arrow Part Number"
F 11 "https://www.arrow.com/en/products/tc4425avoa/microchip-technology?region=nac" H 2900 1450 50  0001 L CNN "Arrow Price/Stock"
	1    1850 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 2350 1400 2350
Wire Wire Line
	3150 2550 3050 2550
Wire Wire Line
	3150 2350 3050 2350
Wire Wire Line
	3500 2450 3050 2450
$Comp
L power:+12V #PWR0102
U 1 1 612D13B0
P 3500 2450
F 0 "#PWR0102" H 3500 2300 50  0001 C CNN
F 1 "+12V" H 3515 2623 50  0000 C CNN
F 2 "" H 3500 2450 50  0001 C CNN
F 3 "" H 3500 2450 50  0001 C CNN
	1    3500 2450
	1    0    0    -1  
$EndComp
Text GLabel 3150 2550 2    50   Input ~ 0
PWM2
Text GLabel 3150 2350 2    50   Input ~ 0
PWM1
Text GLabel 1400 2350 0    50   Input ~ 0
IN1
NoConn ~ 3050 3050
NoConn ~ 1850 3050
Wire Wire Line
	1850 3350 1500 3350
$Comp
L power:Earth #PWR?
U 1 1 612ED931
P 1700 3250
F 0 "#PWR?" H 1700 3000 50  0001 C CNN
F 1 "Earth" H 1700 3100 50  0001 C CNN
F 2 "" H 1700 3250 50  0001 C CNN
F 3 "~" H 1700 3250 50  0001 C CNN
	1    1700 3250
	1    0    0    -1  
$EndComp
Connection ~ 1500 3150
Wire Wire Line
	1850 3150 1500 3150
Wire Wire Line
	1500 3350 1500 3150
Wire Wire Line
	1850 3250 1700 3250
$Comp
L TC4425AVOA:TC4425AVOA IC?
U 1 1 612ED943
P 1850 3050
F 0 "IC?" H 2450 3315 50  0000 C CNN
F 1 "TC4425AVOA" H 2450 3224 50  0000 C CNN
F 2 "SOIC127P600X175-8N" H 2900 3150 50  0001 L CNN
F 3 "" H 2900 3050 50  0001 L CNN
F 4 "Microchip TC4425AVOA, Dual MOSFET Power Driver 4.5A, 4.5  18 V, 8-Pin SOIC" H 2900 2950 50  0001 L CNN "Description"
F 5 "" H 2900 2850 50  0001 L CNN "Height"
F 6 "Microchip" H 2900 2750 50  0001 L CNN "Manufacturer_Name"
F 7 "TC4425AVOA" H 2900 2650 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "579-TC4425AVOA" H 2900 2550 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/Microchip-Technology/TC4425AVOA?qs=AkCjCAp%252BzjS5wj%252ByR4sY7g%3D%3D" H 2900 2450 50  0001 L CNN "Mouser Price/Stock"
F 10 "TC4425AVOA" H 2900 2350 50  0001 L CNN "Arrow Part Number"
F 11 "https://www.arrow.com/en/products/tc4425avoa/microchip-technology?region=nac" H 2900 2250 50  0001 L CNN "Arrow Price/Stock"
	1    1850 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 3150 1400 3150
Wire Wire Line
	3150 3350 3050 3350
Wire Wire Line
	3150 3150 3050 3150
Wire Wire Line
	3500 3250 3050 3250
$Comp
L power:+12V #PWR?
U 1 1 612ED94D
P 3500 3250
F 0 "#PWR?" H 3500 3100 50  0001 C CNN
F 1 "+12V" H 3515 3423 50  0000 C CNN
F 2 "" H 3500 3250 50  0001 C CNN
F 3 "" H 3500 3250 50  0001 C CNN
	1    3500 3250
	1    0    0    -1  
$EndComp
Text GLabel 3150 3350 2    50   Input ~ 0
PWM4
Text GLabel 3150 3150 2    50   Input ~ 0
PWM3
Text GLabel 1400 3150 0    50   Input ~ 0
IN2
$EndSCHEMATC
