EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
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
L bluePillG-rescue:STM32G431C6T6-STM32G431C6T6 IC1
U 1 1 607C26A0
P 3450 5050
F 0 "IC1" H 4300 5300 50  0000 L CNN
F 1 "STM32G431C6T6-STM32G431C6T6" H 3700 3750 50  0000 L CNN
F 2 "STM32G431C6T6:QFP50P900X900X160-48N" H 5100 5750 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/STM32G431C6T6.pdf" H 5100 5650 50  0001 L CNN
F 4 "ARM Microcontrollers - MCU" H 5100 5550 50  0001 L CNN "Description"
F 5 "1.6" H 5100 5450 50  0001 L CNN "Height"
F 6 "STMicroelectronics" H 5100 5350 50  0001 L CNN "Manufacturer_Name"
F 7 "STM32G431C6T6" H 5100 5250 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "511-STM32G431C6T6" H 5100 5150 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/STMicroelectronics/STM32G431C6T6?qs=uwxL4vQweFMIHkXLHKxSFQ%3D%3D" H 5100 5050 50  0001 L CNN "Mouser Price/Stock"
F 10 "STM32G431C6T6" H 5100 4950 50  0001 L CNN "Arrow Part Number"
F 11 "https://www.arrow.com/en/products/stm32g431c6t6/stmicroelectronics" H 5100 4850 50  0001 L CNN "Arrow Price/Stock"
	1    3450 5050
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 607C3A53
P 1000 2300
F 0 "Y1" H 1000 2568 50  0000 C CNN
F 1 "32.768kHz" H 1000 2477 50  0000 C CNN
F 2 "Clocks:CRYSTAL-PTH-2X6-CYL" H 1000 2300 50  0001 C CNN
F 3 "~" H 1000 2300 50  0001 C CNN
	1    1000 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y2
U 1 1 607C60AB
P 2500 2300
F 0 "Y2" H 2500 2568 50  0000 C CNN
F 1 "24MHz" H 2500 2477 50  0000 C CNN
F 2 "Clocks:HC49U" H 2500 2300 50  0001 C CNN
F 3 "~" H 2500 2300 50  0001 C CNN
	1    2500 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C16
U 1 1 607C61EE
P 850 2600
F 0 "C16" H 650 2650 50  0000 L CNN
F 1 "6.8pF" H 600 2500 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 888 2450 50  0001 C CNN
F 3 "~" H 850 2600 50  0001 C CNN
	1    850  2600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C17
U 1 1 607C75CA
P 1150 2600
F 0 "C17" H 950 2650 50  0000 L CNN
F 1 "6.8pF" H 900 2500 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1188 2450 50  0001 C CNN
F 3 "~" H 1150 2600 50  0001 C CNN
	1    1150 2600
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C18
U 1 1 607C806C
P 2350 2600
F 0 "C18" H 2150 2650 50  0000 L CNN
F 1 "20pF" H 2100 2500 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2388 2450 50  0001 C CNN
F 3 "~" H 2350 2600 50  0001 C CNN
	1    2350 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C19
U 1 1 607C8072
P 2650 2600
F 0 "C19" H 2450 2650 50  0000 L CNN
F 1 "20pF" H 2400 2500 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2688 2450 50  0001 C CNN
F 3 "~" H 2650 2600 50  0001 C CNN
	1    2650 2600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2650 2300 2650 2450
Wire Wire Line
	2350 2300 2350 2450
Wire Wire Line
	2650 2750 2500 2750
Wire Wire Line
	1150 2750 1000 2750
Wire Wire Line
	1150 2300 1150 2450
Wire Wire Line
	850  2300 850  2450
$Comp
L power:GND #PWR0101
U 1 1 607C943E
P 2500 2800
F 0 "#PWR0101" H 2500 2550 50  0001 C CNN
F 1 "GND" H 2505 2627 50  0000 C CNN
F 2 "" H 2500 2800 50  0001 C CNN
F 3 "" H 2500 2800 50  0001 C CNN
	1    2500 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 607CB577
P 1000 2800
F 0 "#PWR0102" H 1000 2550 50  0001 C CNN
F 1 "GND" H 1005 2627 50  0000 C CNN
F 2 "" H 1000 2800 50  0001 C CNN
F 3 "" H 1000 2800 50  0001 C CNN
	1    1000 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 2800 1000 2750
Connection ~ 1000 2750
Wire Wire Line
	1000 2750 850  2750
Wire Wire Line
	2500 2800 2500 2750
Connection ~ 2500 2750
Wire Wire Line
	2500 2750 2350 2750
$Comp
L Device:R R3
U 1 1 607CB973
P 2800 2000
F 0 "R3" V 2700 2000 50  0000 C CNN
F 1 "330" V 2900 2000 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2730 2000 50  0001 C CNN
F 3 "~" H 2800 2000 50  0001 C CNN
	1    2800 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	2650 2300 2650 2000
Connection ~ 2650 2300
Wire Wire Line
	2350 2300 2350 1800
Wire Wire Line
	2350 1800 3100 1800
Connection ~ 2350 2300
Wire Wire Line
	2950 2000 3100 2000
Wire Wire Line
	1150 2300 1150 2000
Wire Wire Line
	1150 2000 1400 2000
Connection ~ 1150 2300
Wire Wire Line
	850  2300 850  1800
Wire Wire Line
	850  1800 1400 1800
Connection ~ 850  2300
Text GLabel 1400 1800 2    50   Input ~ 0
OSC32_IN
Text GLabel 1400 2000 2    50   Input ~ 0
OSC32_OUT
Text GLabel 3100 1800 2    50   Input ~ 0
OSC_IN
Text GLabel 3100 2000 2    50   Input ~ 0
OSC_OUT
Text GLabel 3350 5250 0    50   Input ~ 0
OSC32_IN
Text GLabel 3350 5350 0    50   Input ~ 0
OSC32_OUT
Text GLabel 3350 5450 0    50   Input ~ 0
OSC_IN
Text GLabel 3350 5550 0    50   Input ~ 0
OSC_OUT
Wire Wire Line
	3450 5250 3350 5250
Wire Wire Line
	3450 5350 3350 5350
Wire Wire Line
	3450 5450 3350 5450
Wire Wire Line
	3450 5550 3350 5550
Text GLabel 3350 5650 0    50   Input ~ 0
NRST
Wire Wire Line
	3450 5650 3350 5650
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J1
U 1 1 607DDF33
P 4600 2350
F 0 "J1" H 4650 2767 50  0000 C CNN
F 1 "Conn_02x05_Odd_Even" H 4650 2676 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x05_P2.54mm_Vertical" H 4600 2350 50  0001 C CNN
F 3 "~" H 4600 2350 50  0001 C CNN
	1    4600 2350
	1    0    0    -1  
$EndComp
Text Notes 4400 1800 0    50   ~ 0
stlink v2 connector
Text GLabel 4250 2150 0    50   Input ~ 0
NRST
Text GLabel 4250 2250 0    50   Input ~ 0
SWIW
$Comp
L power:GND #PWR0103
U 1 1 607E0426
P 4050 2350
F 0 "#PWR0103" H 4050 2100 50  0001 C CNN
F 1 "GND" H 4055 2177 50  0001 C CNN
F 2 "" H 4050 2350 50  0001 C CNN
F 3 "" H 4050 2350 50  0001 C CNN
	1    4050 2350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0104
U 1 1 607E1F84
P 3700 2550
F 0 "#PWR0104" H 3700 2400 50  0001 C CNN
F 1 "+5V" H 3715 2723 50  0000 C CNN
F 2 "" H 3700 2550 50  0001 C CNN
F 3 "" H 3700 2550 50  0001 C CNN
	1    3700 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 2350 4050 2350
Wire Wire Line
	4400 2450 3850 2450
Wire Wire Line
	4400 2550 3700 2550
Wire Wire Line
	4400 2250 4250 2250
Wire Wire Line
	4400 2150 4250 2150
Text GLabel 5050 2150 2    50   Input ~ 0
SWCLK
Text GLabel 5050 2250 2    50   Input ~ 0
SWDIO
$Comp
L power:GND #PWR0105
U 1 1 607E8DDA
P 5250 2350
F 0 "#PWR0105" H 5250 2100 50  0001 C CNN
F 1 "GND" H 5255 2177 50  0001 C CNN
F 2 "" H 5250 2350 50  0001 C CNN
F 3 "" H 5250 2350 50  0001 C CNN
	1    5250 2350
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0106
U 1 1 607E8DE6
P 5600 2550
F 0 "#PWR0106" H 5600 2400 50  0001 C CNN
F 1 "+5V" H 5615 2723 50  0000 C CNN
F 2 "" H 5600 2550 50  0001 C CNN
F 3 "" H 5600 2550 50  0001 C CNN
	1    5600 2550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4900 2350 5250 2350
Wire Wire Line
	4900 2450 5450 2450
Wire Wire Line
	4900 2550 5600 2550
Wire Wire Line
	4900 2150 5050 2150
Wire Wire Line
	5050 2250 4900 2250
$Comp
L power:+3.3V #PWR0107
U 1 1 607ED987
P 3750 4050
F 0 "#PWR0107" H 3750 3900 50  0001 C CNN
F 1 "+3.3V" V 3750 4300 50  0000 C CNN
F 2 "" H 3750 4050 50  0001 C CNN
F 3 "" H 3750 4050 50  0001 C CNN
	1    3750 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 607EF5F9
P 3850 4050
F 0 "#PWR0108" H 3850 3800 50  0001 C CNN
F 1 "GND" V 3850 3850 50  0000 C CNN
F 2 "" H 3850 4050 50  0001 C CNN
F 3 "" H 3850 4050 50  0001 C CNN
	1    3850 4050
	-1   0    0    1   
$EndComp
Wire Wire Line
	3850 4150 3850 4050
Wire Wire Line
	3750 4150 3750 4050
Wire Wire Line
	4050 4150 4050 3900
Text GLabel 4050 3900 1    50   Input ~ 0
BOOT0
$Comp
L power:+3.3V #PWR0109
U 1 1 607F5D32
P 5350 5050
F 0 "#PWR0109" H 5350 4900 50  0001 C CNN
F 1 "+3.3V" V 5350 5300 50  0000 C CNN
F 2 "" H 5350 5050 50  0001 C CNN
F 3 "" H 5350 5050 50  0001 C CNN
	1    5350 5050
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 607F5D38
P 5350 5150
F 0 "#PWR0110" H 5350 4900 50  0001 C CNN
F 1 "GND" V 5350 4900 50  0000 C CNN
F 2 "" H 5350 5150 50  0001 C CNN
F 3 "" H 5350 5150 50  0001 C CNN
	1    5350 5150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5350 5050 5250 5050
Wire Wire Line
	5350 5150 5250 5150
$Comp
L power:+3.3V #PWR0111
U 1 1 607FFF97
P 4850 6950
F 0 "#PWR0111" H 4850 6800 50  0001 C CNN
F 1 "+3.3V" V 4850 7200 50  0000 C CNN
F 2 "" H 4850 6950 50  0001 C CNN
F 3 "" H 4850 6950 50  0001 C CNN
	1    4850 6950
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 607FFF9D
P 4750 6950
F 0 "#PWR0112" H 4750 6700 50  0001 C CNN
F 1 "GND" V 4750 6750 50  0000 C CNN
F 2 "" H 4750 6950 50  0001 C CNN
F 3 "" H 4750 6950 50  0001 C CNN
	1    4750 6950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4850 6950 4850 6850
Wire Wire Line
	4750 6950 4750 6850
$Comp
L power:+3.3V #PWR0113
U 1 1 60807AA4
P 3350 5000
F 0 "#PWR0113" H 3350 4850 50  0001 C CNN
F 1 "+3.3V" H 3400 5150 50  0000 C CNN
F 2 "" H 3350 5000 50  0001 C CNN
F 3 "" H 3350 5000 50  0001 C CNN
	1    3350 5000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3450 5050 3350 5050
Wire Wire Line
	3350 5050 3350 5000
Text GLabel 4750 4000 1    50   Input ~ 0
SWCLK
Text GLabel 4850 4000 1    50   Input ~ 0
SWDIO
Wire Wire Line
	4850 4150 4850 4000
Wire Wire Line
	4750 4150 4750 4000
Wire Bus Line
	3600 3050 5750 3050
Wire Bus Line
	5750 1500 3600 1500
Wire Bus Line
	1950 3050 550  3050
Wire Bus Line
	550  3050 550  1500
Wire Bus Line
	550  1500 1950 1500
Wire Bus Line
	1950 1500 1950 3050
Text Notes 1150 1600 0    50   ~ 0
LSE
Text Notes 2700 1600 0    50   ~ 0
HSE
Wire Bus Line
	2050 1500 2050 3050
Wire Bus Line
	2050 3050 3550 3050
Wire Bus Line
	3550 3050 3550 1500
Wire Bus Line
	3550 1500 2050 1500
Wire Wire Line
	6450 1800 6450 1750
Wire Wire Line
	6450 2250 6450 2100
$Comp
L power:+3.3V #PWR0114
U 1 1 607DB966
P 6450 1750
F 0 "#PWR0114" H 6450 1600 50  0001 C CNN
F 1 "+3.3V" H 6465 1923 50  0000 C CNN
F 2 "" H 6450 1750 50  0001 C CNN
F 3 "" H 6450 1750 50  0001 C CNN
	1    6450 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 607DAB60
P 6450 1950
F 0 "R2" H 6520 1996 50  0000 L CNN
F 1 "10k" H 6520 1905 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6380 1950 50  0001 C CNN
F 3 "~" H 6450 1950 50  0001 C CNN
	1    6450 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 2700 5950 2700
Connection ~ 6200 2700
Wire Wire Line
	6200 2750 6200 2700
$Comp
L power:GND #PWR0115
U 1 1 607D8214
P 6200 2750
F 0 "#PWR0115" H 6200 2500 50  0001 C CNN
F 1 "GND" H 6350 2700 50  0000 C CNN
F 2 "" H 6200 2750 50  0001 C CNN
F 3 "" H 6200 2750 50  0001 C CNN
	1    6200 2750
	1    0    0    -1  
$EndComp
Connection ~ 6450 2250
Wire Wire Line
	6600 2250 6450 2250
Wire Wire Line
	5950 2250 6450 2250
Wire Wire Line
	6450 2700 6200 2700
Wire Wire Line
	6450 2650 6450 2700
Wire Wire Line
	6450 2250 6450 2350
Wire Wire Line
	5950 2250 5950 2300
$Comp
L Device:C C15
U 1 1 607D3A86
P 6450 2500
F 0 "C15" H 6565 2546 50  0000 L CNN
F 1 "100nF" H 6565 2455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6488 2350 50  0001 C CNN
F 3 "~" H 6450 2500 50  0001 C CNN
	1    6450 2500
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 607D2AB4
P 5950 2500
F 0 "SW1" V 5904 2452 50  0000 R CNN
F 1 "SW_Push" V 5995 2452 50  0000 R CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 5950 2700 50  0001 C CNN
F 3 "~" H 5950 2700 50  0001 C CNN
	1    5950 2500
	0    -1   1    0   
$EndComp
Text GLabel 6600 2250 2    50   Input ~ 0
NRST
Wire Bus Line
	5800 1500 6900 1500
Wire Bus Line
	6900 3050 5800 3050
Text Notes 5950 1700 0    50   ~ 0
RESET
$Comp
L power:+3.3VA #PWR0116
U 1 1 6086297F
P 4550 6950
F 0 "#PWR0116" H 4550 6800 50  0001 C CNN
F 1 "+3.3VA" V 4550 7200 50  0000 C CNN
F 2 "" H 4550 6950 50  0001 C CNN
F 3 "" H 4550 6950 50  0001 C CNN
	1    4550 6950
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3VA #PWR0117
U 1 1 608660E1
P 4450 6950
F 0 "#PWR0117" H 4450 6800 50  0001 C CNN
F 1 "+3.3VA" V 4450 7200 50  0000 C CNN
F 2 "" H 4450 6950 50  0001 C CNN
F 3 "" H 4450 6950 50  0001 C CNN
	1    4450 6950
	-1   0    0    1   
$EndComp
Wire Wire Line
	4550 6950 4550 6850
Wire Wire Line
	4450 6950 4450 6850
Wire Wire Line
	4350 6950 4350 6850
$Comp
L power:GND #PWR0118
U 1 1 6086E5FB
P 4350 6950
F 0 "#PWR0118" H 4350 6700 50  0001 C CNN
F 1 "GND" V 4350 6750 50  0000 C CNN
F 2 "" H 4350 6950 50  0001 C CNN
F 3 "" H 4350 6950 50  0001 C CNN
	1    4350 6950
	-1   0    0    -1  
$EndComp
$Comp
L power:+3.3VA #PWR0119
U 1 1 60871698
P 5050 1000
F 0 "#PWR0119" H 5050 850 50  0001 C CNN
F 1 "+3.3VA" H 5050 1150 50  0000 C CNN
F 2 "" H 5050 1000 50  0001 C CNN
F 3 "" H 5050 1000 50  0001 C CNN
	1    5050 1000
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0120
U 1 1 60873BD8
P 4150 1050
F 0 "#PWR0120" H 4150 900 50  0001 C CNN
F 1 "+3.3V" H 4150 1200 50  0000 C CNN
F 2 "" H 4150 1050 50  0001 C CNN
F 3 "" H 4150 1050 50  0001 C CNN
	1    4150 1050
	-1   0    0    -1  
$EndComp
$Comp
L Device:Ferrite_Bead_Small FB2
U 1 1 6087B46A
P 4600 1150
F 0 "FB2" V 4363 1150 50  0000 C CNN
F 1 "100Ohm @ 100MHz" V 4454 1150 50  0000 C CNN
F 2 "Resistors:0603" V 4530 1150 50  0001 C CNN
F 3 "~" H 4600 1150 50  0001 C CNN
	1    4600 1150
	0    1    1    0   
$EndComp
Wire Wire Line
	5050 1000 5050 1150
Wire Wire Line
	5050 1150 4700 1150
Wire Wire Line
	4500 1150 4150 1150
Wire Wire Line
	4150 1150 4150 1050
$Comp
L power:+3.3VA #PWR0121
U 1 1 60883E21
P 6350 750
F 0 "#PWR0121" H 6350 600 50  0001 C CNN
F 1 "+3.3VA" H 6350 900 50  0000 C CNN
F 2 "" H 6350 750 50  0001 C CNN
F 3 "" H 6350 750 50  0001 C CNN
	1    6350 750 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 60884ECF
P 5650 1050
F 0 "C1" H 5400 1100 50  0000 L CNN
F 1 "1uF" H 5400 1000 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5688 900 50  0001 C CNN
F 3 "~" H 5650 1050 50  0001 C CNN
	1    5650 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 60885C40
P 6000 1050
F 0 "C2" H 6115 1096 50  0000 L CNN
F 1 "100nF" H 6115 1005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6038 900 50  0001 C CNN
F 3 "~" H 6000 1050 50  0001 C CNN
	1    6000 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 900  6000 850 
Wire Wire Line
	5650 850  5650 900 
$Comp
L power:GND #PWR0122
U 1 1 6088B52B
P 6350 1300
F 0 "#PWR0122" H 6350 1050 50  0001 C CNN
F 1 "GND" H 6500 1250 50  0000 C CNN
F 2 "" H 6350 1300 50  0001 C CNN
F 3 "" H 6350 1300 50  0001 C CNN
	1    6350 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 1200 6000 1250
Wire Wire Line
	5650 1250 5650 1200
$Comp
L Device:C C3
U 1 1 608944BE
P 6750 1050
F 0 "C3" H 6500 1100 50  0000 L CNN
F 1 "1uF" H 6500 1000 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6788 900 50  0001 C CNN
F 3 "~" H 6750 1050 50  0001 C CNN
	1    6750 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 608944C4
P 7100 1050
F 0 "C4" H 7215 1096 50  0000 L CNN
F 1 "100nF" H 7215 1005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7138 900 50  0001 C CNN
F 3 "~" H 7100 1050 50  0001 C CNN
	1    7100 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 850  6000 850 
Wire Wire Line
	5650 1250 6000 1250
Wire Wire Line
	7100 900  7100 850 
Wire Wire Line
	7100 850  6750 850 
Wire Wire Line
	6750 850  6750 900 
Wire Wire Line
	6750 850  6350 850 
Connection ~ 6750 850 
Connection ~ 6000 850 
Wire Wire Line
	6750 1200 6750 1250
Wire Wire Line
	6750 1250 6350 1250
Connection ~ 6000 1250
Wire Wire Line
	7100 1200 7100 1250
Wire Wire Line
	7100 1250 6750 1250
Connection ~ 6750 1250
Wire Wire Line
	6350 1300 6350 1250
Wire Wire Line
	6350 850  6350 750 
Connection ~ 6350 850 
Wire Wire Line
	6350 850  6000 850 
Connection ~ 6350 1250
Wire Wire Line
	6350 1250 6000 1250
Text Notes 5750 800  0    50   ~ 0
close to\nVDDA\n
Text Notes 6800 800  0    50   ~ 0
close to\nVREF
Wire Bus Line
	5350 550  5350 1450
Wire Bus Line
	10550 1450 10550 550 
Wire Bus Line
	5250 1450 3950 1450
Wire Bus Line
	3950 550  5250 550 
Wire Bus Line
	5250 550  5250 1450
Wire Bus Line
	3950 550  3950 1450
$Comp
L Device:C C5
U 1 1 608CAFEE
P 7900 1050
F 0 "C5" H 7800 1150 50  0000 L CNN
F 1 "10uF" H 7700 950 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7938 900 50  0001 C CNN
F 3 "~" H 7900 1050 50  0001 C CNN
	1    7900 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 608CAFF4
P 8100 1050
F 0 "C6" H 8150 1150 50  0000 L CNN
F 1 "100nF" H 8150 950 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8138 900 50  0001 C CNN
F 3 "~" H 8100 1050 50  0001 C CNN
	1    8100 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 608DBC3A
P 8600 1050
F 0 "C7" H 8500 1150 50  0000 L CNN
F 1 "10uF" H 8400 950 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8638 900 50  0001 C CNN
F 3 "~" H 8600 1050 50  0001 C CNN
	1    8600 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 608DBC40
P 8800 1050
F 0 "C8" H 8850 1150 50  0000 L CNN
F 1 "100nF" H 8850 950 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8838 900 50  0001 C CNN
F 3 "~" H 8800 1050 50  0001 C CNN
	1    8800 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 608DDE68
P 9300 1050
F 0 "C9" H 9200 1150 50  0000 L CNN
F 1 "10uF" H 9100 950 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9338 900 50  0001 C CNN
F 3 "~" H 9300 1050 50  0001 C CNN
	1    9300 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 608DDE6E
P 9500 1050
F 0 "C10" H 9550 1150 50  0000 L CNN
F 1 "100nF" H 9550 950 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9538 900 50  0001 C CNN
F 3 "~" H 9500 1050 50  0001 C CNN
	1    9500 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 608DFC28
P 10000 1050
F 0 "C11" H 9900 1150 50  0000 L CNN
F 1 "10uF" H 9800 950 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 10038 900 50  0001 C CNN
F 3 "~" H 10000 1050 50  0001 C CNN
	1    10000 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 608DFC2E
P 10200 1050
F 0 "C12" H 10250 1150 50  0000 L CNN
F 1 "100nF" H 10250 950 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 10238 900 50  0001 C CNN
F 3 "~" H 10200 1050 50  0001 C CNN
	1    10200 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 1250 9500 1200
Wire Wire Line
	9500 1250 9300 1250
Wire Wire Line
	9300 1250 9300 1200
Connection ~ 9500 1250
Connection ~ 9300 1250
Wire Wire Line
	9300 850  9300 900 
Wire Wire Line
	9300 850  9500 850 
Wire Wire Line
	9500 850  9500 900 
Connection ~ 9300 850 
Connection ~ 9500 850 
Wire Wire Line
	9050 850  9050 750 
$Comp
L power:GND #PWR0123
U 1 1 6090F310
P 9050 1300
F 0 "#PWR0123" H 9050 1050 50  0001 C CNN
F 1 "GND" H 9200 1250 50  0000 C CNN
F 2 "" H 9050 1300 50  0001 C CNN
F 3 "" H 9050 1300 50  0001 C CNN
	1    9050 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 1300 9050 1250
Wire Wire Line
	9500 850  10000 850 
Wire Wire Line
	7900 1250 7900 1200
Wire Wire Line
	7900 1250 8100 1250
Wire Wire Line
	8100 1200 8100 1250
Connection ~ 8100 1250
Wire Wire Line
	8100 1250 8600 1250
Wire Wire Line
	8100 900  8100 850 
Connection ~ 8100 850 
Wire Wire Line
	8100 850  8600 850 
Wire Wire Line
	7900 850  7900 900 
Wire Wire Line
	7900 850  8100 850 
Wire Wire Line
	8600 900  8600 850 
Connection ~ 8600 850 
Wire Wire Line
	8600 850  8800 850 
Wire Wire Line
	8800 900  8800 850 
Connection ~ 8800 850 
Wire Wire Line
	8800 850  9050 850 
Wire Wire Line
	8800 1200 8800 1250
Connection ~ 8800 1250
Wire Wire Line
	8800 1250 9050 1250
Wire Wire Line
	8600 1200 8600 1250
Connection ~ 8600 1250
Wire Wire Line
	8600 1250 8800 1250
Wire Wire Line
	10000 900  10000 850 
Connection ~ 10000 850 
Wire Wire Line
	10200 900  10200 850 
Wire Wire Line
	10000 850  10200 850 
Wire Wire Line
	10200 1200 10200 1250
Wire Wire Line
	9500 1250 10000 1250
Wire Wire Line
	10000 1200 10000 1250
Connection ~ 10000 1250
Wire Wire Line
	10000 1250 10200 1250
Connection ~ 9050 850 
Wire Wire Line
	9050 850  9300 850 
Connection ~ 9050 1250
Wire Wire Line
	9050 1250 9300 1250
$Comp
L power:+3.3V #PWR0124
U 1 1 60941E4A
P 9050 750
F 0 "#PWR0124" H 9050 600 50  0001 C CNN
F 1 "+3.3V" H 9050 900 50  0000 C CNN
F 2 "" H 9050 750 50  0001 C CNN
F 3 "" H 9050 750 50  0001 C CNN
	1    9050 750 
	-1   0    0    -1  
$EndComp
Wire Bus Line
	5350 550  10550 550 
Wire Bus Line
	5350 1450 10550 1450
Text Notes 7450 650  0    50   ~ 0
DECOUPLING
$Comp
L power:VCC #PWR0125
U 1 1 60954F1C
P 650 900
F 0 "#PWR0125" H 650 750 50  0001 C CNN
F 1 "VCC" H 665 1073 50  0000 C CNN
F 2 "" H 650 900 50  0001 C CNN
F 3 "" H 650 900 50  0001 C CNN
	1    650  900 
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N5819 D1
U 1 1 6095643C
P 900 900
F 0 "D1" H 900 683 50  0000 C CNN
F 1 "1N5819" H 900 774 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 900 725 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 900 900 50  0001 C CNN
	1    900  900 
	-1   0    0    1   
$EndComp
$Comp
L Device:Fuse F1
U 1 1 60957C2F
P 1200 900
F 0 "F1" V 1100 900 50  0000 C CNN
F 1 "500 mA" V 1300 900 50  0000 C CNN
F 2 "Resistors:1206" V 1130 900 50  0001 C CNN
F 3 "~" H 1200 900 50  0001 C CNN
	1    1200 900 
	0    1    1    0   
$EndComp
$Comp
L Device:Ferrite_Bead_Small FB1
U 1 1 60959AD8
P 1650 900
F 0 "FB1" V 1413 900 50  0000 C CNN
F 1 "100Ohm @ 100MHz" V 1504 900 50  0000 C CNN
F 2 "Resistors:0603" V 1580 900 50  0001 C CNN
F 3 "~" H 1650 900 50  0001 C CNN
	1    1650 900 
	0    1    1    0   
$EndComp
$Comp
L Regulator_Linear:AMS1117-3.3 U1
U 1 1 6095CBB3
P 2400 900
F 0 "U1" H 2400 1142 50  0000 C CNN
F 1 "AMS1117-3.3" H 2400 1051 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 2400 1100 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 2500 650 50  0001 C CNN
	1    2400 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C13
U 1 1 6095D948
P 1900 1100
F 0 "C13" H 2015 1146 50  0000 L CNN
F 1 "10u" H 2015 1055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1938 950 50  0001 C CNN
F 3 "~" H 1900 1100 50  0001 C CNN
	1    1900 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C14
U 1 1 6095E2A5
P 2850 1100
F 0 "C14" H 2965 1146 50  0000 L CNN
F 1 "10u" H 2965 1055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2888 950 50  0001 C CNN
F 3 "~" H 2850 1100 50  0001 C CNN
	1    2850 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 950  2850 900 
Wire Wire Line
	2850 900  2700 900 
Wire Wire Line
	2850 1250 2400 1250
Wire Wire Line
	2400 1250 2400 1200
Wire Wire Line
	2400 1250 1900 1250
Connection ~ 2400 1250
Wire Wire Line
	2100 900  1900 900 
Wire Wire Line
	1900 900  1900 950 
Wire Wire Line
	1900 900  1750 900 
Connection ~ 1900 900 
Wire Wire Line
	1550 900  1350 900 
Wire Wire Line
	750  900  650  900 
$Comp
L power:+3.3VP #PWR0126
U 1 1 6098A624
P 2850 800
F 0 "#PWR0126" H 3000 750 50  0001 C CNN
F 1 "+3.3VP" H 2865 973 50  0000 C CNN
F 2 "" H 2850 800 50  0001 C CNN
F 3 "" H 2850 800 50  0001 C CNN
	1    2850 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 900  2850 800 
Connection ~ 2850 900 
$Comp
L Device:LED D2
U 1 1 6098F39B
P 3300 900
F 0 "D2" H 3293 645 50  0000 C CNN
F 1 "LED" H 3293 736 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 3300 900 50  0001 C CNN
F 3 "~" H 3300 900 50  0001 C CNN
	1    3300 900 
	-1   0    0    1   
$EndComp
$Comp
L Device:R R1
U 1 1 60990250
P 3550 1100
F 0 "R1" H 3620 1146 50  0000 L CNN
F 1 "2.2k" H 3620 1055 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3480 1100 50  0001 C CNN
F 3 "~" H 3550 1100 50  0001 C CNN
	1    3550 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 950  3550 900 
Wire Wire Line
	3550 900  3450 900 
Wire Wire Line
	3150 900  2850 900 
Wire Wire Line
	3550 1250 2850 1250
Connection ~ 2850 1250
$Comp
L power:GND #PWR0127
U 1 1 6099E67F
P 2400 1250
F 0 "#PWR0127" H 2400 1000 50  0001 C CNN
F 1 "GND" H 2400 1100 50  0000 C CNN
F 2 "" H 2400 1250 50  0001 C CNN
F 3 "" H 2400 1250 50  0001 C CNN
	1    2400 1250
	1    0    0    -1  
$EndComp
Wire Bus Line
	3850 550  550  550 
Wire Bus Line
	550  1450 3850 1450
Wire Bus Line
	3850 550  3850 1450
Wire Bus Line
	550  550  550  1450
Text Notes 850  1300 0    50   ~ 0
POWER SUPPLY
Wire Bus Line
	6900 1500 6900 3050
Wire Bus Line
	5800 1500 5800 3050
Wire Bus Line
	5750 1500 5750 3050
Wire Bus Line
	3600 1500 3600 3050
Text GLabel 7300 2350 0    50   Input ~ 0
BOOT0
$Comp
L Device:R R4
U 1 1 60A4CB64
P 7500 2350
F 0 "R4" V 7293 2350 50  0000 C CNN
F 1 "10k" V 7384 2350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7430 2350 50  0001 C CNN
F 3 "~" H 7500 2350 50  0001 C CNN
	1    7500 2350
	0    -1   1    0   
$EndComp
$Comp
L Connector:Conn_01x03_Male J2
U 1 1 60A4EDD8
P 8000 2350
F 0 "J2" H 8108 2539 50  0000 C CNN
F 1 "Conn_01x03_Male" H 8108 2540 50  0001 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 8000 2350 50  0001 C CNN
F 3 "~" H 8000 2350 50  0001 C CNN
	1    8000 2350
	-1   0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0128
U 1 1 60A54D85
P 7800 2100
F 0 "#PWR0128" H 7800 1950 50  0001 C CNN
F 1 "+3.3V" H 7815 2273 50  0000 C CNN
F 2 "" H 7800 2100 50  0001 C CNN
F 3 "" H 7800 2100 50  0001 C CNN
	1    7800 2100
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0129
U 1 1 60A59286
P 7800 2550
F 0 "#PWR0129" H 7800 2300 50  0001 C CNN
F 1 "GND" H 7950 2500 50  0000 C CNN
F 2 "" H 7800 2550 50  0001 C CNN
F 3 "" H 7800 2550 50  0001 C CNN
	1    7800 2550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7800 2250 7800 2100
Wire Wire Line
	7800 2450 7800 2550
Wire Wire Line
	7650 2350 7800 2350
Wire Wire Line
	7300 2350 7350 2350
Wire Bus Line
	6950 1500 6950 3050
Wire Bus Line
	6950 3050 8150 3050
Wire Bus Line
	8150 3050 8150 1500
Wire Bus Line
	8150 1500 6950 1500
$Comp
L Connector:Conn_01x03_Male J3
U 1 1 60A8CD53
P 8300 1900
F 0 "J3" H 8400 1750 50  0000 C CNN
F 1 "Conn_01x03_Male" H 8408 2090 50  0001 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 8300 1900 50  0001 C CNN
F 3 "~" H 8300 1900 50  0001 C CNN
	1    8300 1900
	1    0    0    -1  
$EndComp
Text GLabel 3850 2350 1    50   Input ~ 0
+3V3S
Text GLabel 5450 2350 1    50   Input ~ 0
+3V3S
Wire Wire Line
	5450 2450 5450 2350
Wire Wire Line
	3850 2350 3850 2450
Text GLabel 8650 2000 2    50   Input ~ 0
+3V3S
Wire Wire Line
	8650 1800 8500 1800
Wire Wire Line
	8650 2000 8500 2000
$Comp
L power:+3.3V #PWR0131
U 1 1 60AEEA67
P 8900 1900
F 0 "#PWR0131" H 8900 1750 50  0001 C CNN
F 1 "+3.3V" H 8915 2073 50  0000 C CNN
F 2 "" H 8900 1900 50  0001 C CNN
F 3 "" H 8900 1900 50  0001 C CNN
	1    8900 1900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8500 1900 8900 1900
Wire Bus Line
	8200 1500 8200 3050
Wire Bus Line
	8200 3050 9050 3050
Wire Bus Line
	9050 3050 9050 1500
Wire Bus Line
	9050 1500 8200 1500
Wire Bus Line
	9100 1500 10550 1500
Wire Bus Line
	10550 1500 10550 3050
Wire Bus Line
	10550 3050 9100 3050
Wire Bus Line
	9100 3050 9100 1500
$Comp
L power:VCC #PWR02
U 1 1 6091D97B
P 9650 2200
F 0 "#PWR02" H 9650 2050 50  0001 C CNN
F 1 "VCC" H 9665 2373 50  0000 C CNN
F 2 "" H 9650 2200 50  0001 C CNN
F 3 "" H 9650 2200 50  0001 C CNN
	1    9650 2200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J4
U 1 1 60929024
P 9300 2250
F 0 "J4" H 9408 2339 50  0000 C CNN
F 1 "Conn_01x02_Male" H 9408 2340 50  0001 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 9300 2250 50  0001 C CNN
F 3 "~" H 9300 2250 50  0001 C CNN
	1    9300 2250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 6093AD94
P 9650 2400
F 0 "#PWR03" H 9650 2150 50  0001 C CNN
F 1 "GND" H 9800 2350 50  0000 C CNN
F 2 "" H 9650 2400 50  0001 C CNN
F 3 "" H 9650 2400 50  0001 C CNN
	1    9650 2400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9650 2200 9650 2250
Wire Wire Line
	9650 2250 9500 2250
Wire Wire Line
	9500 2350 9650 2350
Wire Wire Line
	9650 2350 9650 2400
$Comp
L Connector:Conn_01x02_Male J5
U 1 1 6097AB8B
P 8550 2800
F 0 "J5" H 8658 2889 50  0000 C CNN
F 1 "Conn_01x02_Male" H 8658 2890 50  0001 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 8550 2800 50  0001 C CNN
F 3 "~" H 8550 2800 50  0001 C CNN
	1    8550 2800
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR04
U 1 1 60985027
P 8350 2450
F 0 "#PWR04" H 8350 2300 50  0001 C CNN
F 1 "VCC" H 8365 2623 50  0000 C CNN
F 2 "" H 8350 2450 50  0001 C CNN
F 3 "" H 8350 2450 50  0001 C CNN
	1    8350 2450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR05
U 1 1 6098D07B
P 8800 2450
F 0 "#PWR05" H 8800 2300 50  0001 C CNN
F 1 "+5V" H 8815 2623 50  0000 C CNN
F 2 "" H 8800 2450 50  0001 C CNN
F 3 "" H 8800 2450 50  0001 C CNN
	1    8800 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 2600 8650 2500
Wire Wire Line
	8650 2500 8800 2500
Wire Wire Line
	8800 2500 8800 2450
Wire Wire Line
	8550 2600 8550 2500
Wire Wire Line
	8550 2500 8350 2500
Wire Wire Line
	8350 2500 8350 2450
Text Notes 8450 2900 0    50   ~ 0
JUMPER
Text Notes 8250 1750 0    50   ~ 0
JUMPER
$Comp
L power:+3.3VP #PWR01
U 1 1 609BFDC4
P 8650 1800
F 0 "#PWR01" H 8800 1750 50  0001 C CNN
F 1 "+3.3VP" H 8665 1973 50  0000 C CNN
F 2 "" H 8650 1800 50  0001 C CNN
F 3 "" H 8650 1800 50  0001 C CNN
	1    8650 1800
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 609D6A35
P 9950 2150
F 0 "H1" H 10050 2153 50  0000 L CNN
F 1 "MountingHole_Pad" H 10050 2108 50  0001 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 9950 2150 50  0001 C CNN
F 3 "~" H 9950 2150 50  0001 C CNN
	1    9950 2150
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 609D94DA
P 9950 2450
F 0 "H2" H 9750 2450 50  0000 L CNN
F 1 "MountingHole_Pad" H 10050 2408 50  0001 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 9950 2450 50  0001 C CNN
F 3 "~" H 9950 2450 50  0001 C CNN
	1    9950 2450
	-1   0    0    1   
$EndComp
Wire Wire Line
	9950 2250 9650 2250
Connection ~ 9650 2250
Wire Wire Line
	9950 2350 9650 2350
Connection ~ 9650 2350
$Comp
L Connector:Conn_01x10_Male J6
U 1 1 60A26A0F
P 800 4250
F 0 "J6" H 908 4739 50  0000 C CNN
F 1 "Conn_01x10_Male" H 908 4740 50  0001 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x10_P2.54mm_Vertical" H 800 4250 50  0001 C CNN
F 3 "~" H 800 4250 50  0001 C CNN
	1    800  4250
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x10_Male J7
U 1 1 60A30225
P 800 5300
F 0 "J7" H 908 5789 50  0000 C CNN
F 1 "Conn_01x10_Male" H 908 5790 50  0001 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x10_P2.54mm_Vertical" H 800 5300 50  0001 C CNN
F 3 "~" H 800 5300 50  0001 C CNN
	1    800  5300
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x10_Male J8
U 1 1 60A36576
P 800 6350
F 0 "J8" H 908 6839 50  0000 C CNN
F 1 "Conn_01x10_Male" H 908 6840 50  0001 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x10_P2.54mm_Vertical" H 800 6350 50  0001 C CNN
F 3 "~" H 800 6350 50  0001 C CNN
	1    800  6350
	1    0    0    -1  
$EndComp
Text GLabel 3350 5750 0    50   Input ~ 0
PA0
Text GLabel 3350 5850 0    50   Input ~ 0
PA1
Text GLabel 3350 5950 0    50   Input ~ 0
PA2
Text GLabel 3350 6050 0    50   Input ~ 0
PA3
Text GLabel 3350 6150 0    50   Input ~ 0
PA4
Text GLabel 3750 7000 3    50   Input ~ 0
PA5
Text GLabel 3850 7000 3    50   Input ~ 0
PA6
Text GLabel 3950 7000 3    50   Input ~ 0
PA7
Text GLabel 4050 7000 3    50   Input ~ 0
PB0
Text GLabel 4150 7000 3    50   Input ~ 0
PB1
Text GLabel 4250 7000 3    50   Input ~ 0
PB2
Wire Wire Line
	3450 5750 3350 5750
Wire Wire Line
	3450 5850 3350 5850
Wire Wire Line
	3450 5950 3350 5950
Wire Wire Line
	3450 6050 3350 6050
Wire Wire Line
	3450 6150 3350 6150
Wire Wire Line
	3750 7000 3750 6850
Wire Wire Line
	3850 7000 3850 6850
Wire Wire Line
	3950 7000 3950 6850
Wire Wire Line
	4050 7000 4050 6850
Wire Wire Line
	4150 7000 4150 6850
Wire Wire Line
	4250 6850 4250 7000
Text GLabel 1100 3950 2    50   Input ~ 0
PA0
Text GLabel 1100 4050 2    50   Input ~ 0
PA1
Text GLabel 1100 4150 2    50   Input ~ 0
PA2
Text GLabel 1100 4250 2    50   Input ~ 0
PA3
Text GLabel 1100 4350 2    50   Input ~ 0
PA4
Wire Wire Line
	1000 3950 1100 3950
Wire Wire Line
	1000 4050 1100 4050
Wire Wire Line
	1000 4150 1100 4150
Wire Wire Line
	1000 4250 1100 4250
Wire Wire Line
	1000 4350 1100 4350
Text GLabel 1100 4450 2    50   Input ~ 0
PA5
Text GLabel 1100 4550 2    50   Input ~ 0
PA6
Text GLabel 1100 4650 2    50   Input ~ 0
PA7
Text GLabel 1100 4750 2    50   Input ~ 0
PB0
Text GLabel 1100 4900 2    50   Input ~ 0
PB1
Text GLabel 1100 5000 2    50   Input ~ 0
PB2
Wire Wire Line
	1100 4450 1000 4450
Wire Wire Line
	1100 4550 1000 4550
Wire Wire Line
	1100 4650 1000 4650
Wire Wire Line
	1100 4750 1000 4750
Wire Wire Line
	1100 4900 1000 4900
Text GLabel 4650 7000 3    50   Input ~ 0
PB10
Wire Wire Line
	4650 6850 4650 7000
Text GLabel 1100 5100 2    50   Input ~ 0
PB10
Text GLabel 5350 5250 2    50   Input ~ 0
PA12
Text GLabel 5350 5350 2    50   Input ~ 0
PA11
Text GLabel 5350 5450 2    50   Input ~ 0
PA10
Text GLabel 5350 5550 2    50   Input ~ 0
PA9
Text GLabel 5350 5650 2    50   Input ~ 0
PA8
Text GLabel 5350 5750 2    50   Input ~ 0
PB15
Text GLabel 5350 5850 2    50   Input ~ 0
PB14
Text GLabel 5350 5950 2    50   Input ~ 0
PB13
Text GLabel 5350 6050 2    50   Input ~ 0
PB12
Text GLabel 5350 6150 2    50   Input ~ 0
PB11
Wire Wire Line
	5350 5250 5250 5250
Wire Wire Line
	5350 5350 5250 5350
Wire Wire Line
	5350 5450 5250 5450
Wire Wire Line
	5350 5550 5250 5550
Wire Wire Line
	5350 5650 5250 5650
Wire Wire Line
	5350 5750 5250 5750
Wire Wire Line
	5350 5850 5250 5850
Wire Wire Line
	5350 5950 5250 5950
Wire Wire Line
	5350 6050 5250 6050
Wire Wire Line
	5350 6150 5250 6150
Text GLabel 1100 6150 2    50   Input ~ 0
PA12
Text GLabel 1100 6050 2    50   Input ~ 0
PA11
Text GLabel 1100 5950 2    50   Input ~ 0
PA10
Text GLabel 1100 5800 2    50   Input ~ 0
PA9
Text GLabel 1100 5700 2    50   Input ~ 0
PA8
Text GLabel 1100 5600 2    50   Input ~ 0
PB15
Text GLabel 1100 5500 2    50   Input ~ 0
PB14
Text GLabel 1100 5400 2    50   Input ~ 0
PB13
Text GLabel 1100 5300 2    50   Input ~ 0
PB12
Text GLabel 1100 5200 2    50   Input ~ 0
PB11
Wire Wire Line
	1100 6150 1000 6150
Wire Wire Line
	1100 6050 1000 6050
Wire Wire Line
	1100 5950 1000 5950
Wire Wire Line
	1100 5800 1000 5800
Wire Wire Line
	1100 5700 1000 5700
Wire Wire Line
	1100 5600 1000 5600
Wire Wire Line
	1100 5500 1000 5500
Wire Wire Line
	1100 5400 1000 5400
Wire Wire Line
	1100 5300 1000 5300
Wire Wire Line
	1100 5200 1000 5200
Wire Wire Line
	1100 5000 1000 5000
Wire Wire Line
	1100 5100 1000 5100
Text GLabel 4650 4050 1    50   Input ~ 0
PA15
Wire Wire Line
	4650 4050 4650 4150
Text GLabel 4550 4050 1    50   Input ~ 0
PB3
Text GLabel 4450 4050 1    50   Input ~ 0
PB4
Text GLabel 4350 4050 1    50   Input ~ 0
PB5
Text GLabel 4250 4050 1    50   Input ~ 0
PB6
Text GLabel 4150 4050 1    50   Input ~ 0
PB7
Text GLabel 3950 4050 1    50   Input ~ 0
PB9
Wire Wire Line
	4550 4150 4550 4050
Wire Wire Line
	4450 4150 4450 4050
Wire Wire Line
	4350 4150 4350 4050
Wire Wire Line
	4250 4150 4250 4050
Wire Wire Line
	4150 4150 4150 4050
Wire Wire Line
	3950 4150 3950 4050
Text GLabel 1100 6250 2    50   Input ~ 0
PA15
Wire Wire Line
	1100 6250 1000 6250
Text GLabel 1100 6350 2    50   Input ~ 0
PB3
Text GLabel 1100 6450 2    50   Input ~ 0
PB4
Text GLabel 1100 6550 2    50   Input ~ 0
PB5
Text GLabel 1100 6650 2    50   Input ~ 0
PB6
Text GLabel 1100 6750 2    50   Input ~ 0
PB7
Wire Wire Line
	1000 6350 1100 6350
Wire Wire Line
	1000 6450 1100 6450
Wire Wire Line
	1000 6550 1100 6550
Wire Wire Line
	1000 6650 1100 6650
Wire Wire Line
	1000 6750 1100 6750
Text GLabel 1100 6850 2    50   Input ~ 0
PB9
Wire Wire Line
	1000 6850 1100 6850
Text GLabel 3350 5150 0    50   Input ~ 0
PC13
Wire Wire Line
	3450 5150 3350 5150
Text GLabel 1100 3850 2    50   Input ~ 0
PC13
Wire Wire Line
	1100 3850 1000 3850
Text GLabel 2300 3850 2    50   Input ~ 0
PC13
$Comp
L Device:LED D3
U 1 1 60D4F293
P 2050 3850
F 0 "D3" H 2043 3595 50  0000 C CNN
F 1 "LED" H 2043 3686 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 2050 3850 50  0001 C CNN
F 3 "~" H 2050 3850 50  0001 C CNN
	1    2050 3850
	-1   0    0    1   
$EndComp
$Comp
L Device:R R5
U 1 1 60D5F539
P 1700 3650
F 0 "R5" H 1770 3696 50  0000 L CNN
F 1 "2.2k" H 1770 3605 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1630 3650 50  0001 C CNN
F 3 "~" H 1700 3650 50  0001 C CNN
	1    1700 3650
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR06
U 1 1 60D76494
P 1700 3450
F 0 "#PWR06" H 1700 3300 50  0001 C CNN
F 1 "+3.3V" H 1700 3600 50  0000 C CNN
F 2 "" H 1700 3450 50  0001 C CNN
F 3 "" H 1700 3450 50  0001 C CNN
	1    1700 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 3850 2200 3850
Wire Wire Line
	1900 3850 1700 3850
Wire Wire Line
	1700 3850 1700 3800
Wire Wire Line
	1700 3500 1700 3450
$Comp
L Connector_Generic:Conn_02x02_Top_Bottom J9
U 1 1 60DC4803
P 1100 7200
F 0 "J9" H 1150 7325 50  0000 C CNN
F 1 "Conn_02x02_Top_Bottom" H 1150 7326 50  0001 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x02_P2.54mm_Vertical" H 1100 7200 50  0001 C CNN
F 3 "~" H 1100 7200 50  0001 C CNN
	1    1100 7200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 60DC7E20
P 1150 7450
F 0 "#PWR08" H 1150 7200 50  0001 C CNN
F 1 "GND" H 1150 7300 50  0000 C CNN
F 2 "" H 1150 7450 50  0001 C CNN
F 3 "" H 1150 7450 50  0001 C CNN
	1    1150 7450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1400 7200 1400 7300
Wire Wire Line
	1400 7300 1400 7450
Wire Wire Line
	1400 7450 1150 7450
Connection ~ 1400 7300
Wire Wire Line
	1150 7450 900  7450
Wire Wire Line
	900  7450 900  7300
Connection ~ 1150 7450
Wire Wire Line
	900  7300 900  7200
Connection ~ 900  7300
$Comp
L Connector_Generic:Conn_02x02_Top_Bottom J10
U 1 1 60E1194B
P 1750 7200
F 0 "J10" H 1800 7325 50  0000 C CNN
F 1 "Conn_02x02_Top_Bottom" H 1800 7326 50  0001 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x02_P2.54mm_Vertical" H 1750 7200 50  0001 C CNN
F 3 "~" H 1750 7200 50  0001 C CNN
	1    1750 7200
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR07
U 1 1 60E220CC
P 1800 7000
F 0 "#PWR07" H 1800 6850 50  0001 C CNN
F 1 "+3.3V" H 1800 7150 50  0000 C CNN
F 2 "" H 1800 7000 50  0001 C CNN
F 3 "" H 1800 7000 50  0001 C CNN
	1    1800 7000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2050 7300 2050 7200
Wire Wire Line
	2050 7200 2050 7000
Wire Wire Line
	2050 7000 1800 7000
Connection ~ 2050 7200
Wire Wire Line
	1800 7000 1550 7000
Wire Wire Line
	1550 7000 1550 7200
Connection ~ 1800 7000
Wire Wire Line
	1550 7200 1550 7300
Connection ~ 1550 7200
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 60EC6317
P 10250 2150
F 0 "H3" H 10350 2153 50  0000 L CNN
F 1 "MountingHole_Pad" H 10350 2108 50  0001 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 10250 2150 50  0001 C CNN
F 3 "~" H 10250 2150 50  0001 C CNN
	1    10250 2150
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 60EC631D
P 10250 2450
F 0 "H4" H 10050 2450 50  0000 L CNN
F 1 "MountingHole_Pad" H 10350 2408 50  0001 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 10250 2450 50  0001 C CNN
F 3 "~" H 10250 2450 50  0001 C CNN
	1    10250 2450
	-1   0    0    1   
$EndComp
Wire Wire Line
	10250 2250 9950 2250
Wire Wire Line
	10250 2350 9950 2350
$EndSCHEMATC
