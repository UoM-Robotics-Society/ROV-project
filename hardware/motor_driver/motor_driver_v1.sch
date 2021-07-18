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
L power:GND #PWR026
U 1 1 607AAE7A
P 1900 4475
F 0 "#PWR026" H 1900 4225 50  0001 C CNN
F 1 "GND" H 1905 4302 50  0000 C CNN
F 2 "" H 1900 4475 50  0001 C CNN
F 3 "" H 1900 4475 50  0001 C CNN
	1    1900 4475
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 4325 1900 4325
Wire Wire Line
	1900 4325 1900 4225
Wire Wire Line
	1900 4475 1900 4425
Wire Wire Line
	1900 4425 1800 4425
Wire Wire Line
	2050 4525 2050 4425
Wire Wire Line
	2050 4425 1900 4425
Connection ~ 1900 4425
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 60DA95DE
P 3250 2225
F 0 "J1" V 3168 2037 50  0000 R CNN
F 1 "Screw_Terminal_01x02" V 3123 2037 50  0001 R CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 3250 2225 50  0001 C CNN
F 3 "~" H 3250 2225 50  0001 C CNN
	1    3250 2225
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3350 2425 3350 2475
Wire Wire Line
	3350 2475 3450 2475
Connection ~ 4200 2475
Wire Wire Line
	4200 2475 4200 2675
Wire Wire Line
	3250 2425 3250 2475
Wire Wire Line
	3250 2475 3150 2475
Wire Wire Line
	2450 2475 2450 2275
Wire Wire Line
	2450 2675 2450 2475
Connection ~ 2450 2475
Wire Wire Line
	4200 2275 4200 2475
$Comp
L power:GND #PWR011
U 1 1 60DA95EE
P 3250 3075
F 0 "#PWR011" H 3250 2825 50  0001 C CNN
F 1 "GND" H 3255 2902 50  0000 C CNN
F 2 "" H 3250 3075 50  0001 C CNN
F 3 "" H 3250 3075 50  0001 C CNN
	1    3250 3075
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR01
U 1 1 60DA9604
P 3250 1000
F 0 "#PWR01" H 3250 850 50  0001 C CNN
F 1 "VCC" H 3265 1173 50  0000 C CNN
F 2 "" H 3250 1000 50  0001 C CNN
F 3 "" H 3250 1000 50  0001 C CNN
	1    3250 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 1300 4450 1200
Text GLabel 4550 1400 2    50   Input ~ 0
I_MES1
Wire Wire Line
	4550 1400 4450 1400
$Comp
L power:GND #PWR09
U 1 1 60DA960D
P 4450 1650
F 0 "#PWR09" H 4450 1400 50  0001 C CNN
F 1 "GND" H 4455 1477 50  0000 C CNN
F 2 "" H 4450 1650 50  0001 C CNN
F 3 "" H 4450 1650 50  0001 C CNN
	1    4450 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 60DA9616
P 3300 2725
F 0 "C1" V 3150 2725 50  0000 C CNN
F 1 "10uf" V 3450 2725 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3338 2575 50  0001 C CNN
F 3 "~" H 3300 2725 50  0001 C CNN
	1    3300 2725
	0    1    1    0   
$EndComp
Wire Wire Line
	3450 2725 3450 2475
Connection ~ 3450 2475
Wire Wire Line
	3450 2475 4200 2475
Wire Wire Line
	3150 2725 3150 2475
Connection ~ 3150 2475
Wire Wire Line
	3150 2475 2450 2475
$Comp
L Transistor_FET:IRF3205 Q6
U 1 1 60DA9626
P 4300 2875
F 0 "Q6" H 4505 2921 50  0000 L CNN
F 1 "IRF3205" H 4505 2830 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Horizontal_TabDown" H 4550 2800 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf3205.pdf" H 4300 2875 50  0001 L CNN
	1    4300 2875
	-1   0    0    -1  
$EndComp
$Comp
L Transistor_FET:IRF4905 Q1
U 1 1 60DA962C
P 2350 2075
F 0 "Q1" H 2555 2029 50  0000 L CNN
F 1 "IRF4905" H 2555 2120 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Horizontal_TabDown" H 2550 2000 50  0001 L CIN
F 3 "http://www.infineon.com/dgdl/irf4905.pdf?fileId=5546d462533600a4015355e32165197c" H 2350 2075 50  0001 L CNN
	1    2350 2075
	1    0    0    1   
$EndComp
$Comp
L Transistor_FET:IRF4905 Q2
U 1 1 60DA9632
P 4300 2075
F 0 "Q2" H 4505 2029 50  0000 L CNN
F 1 "IRF4905" H 4505 2120 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Horizontal_TabDown" H 4500 2000 50  0001 L CIN
F 3 "http://www.infineon.com/dgdl/irf4905.pdf?fileId=5546d462533600a4015355e32165197c" H 4300 2075 50  0001 L CNN
	1    4300 2075
	-1   0    0    1   
$EndComp
$Comp
L Transistor_FET:IRF3205 Q5
U 1 1 60DA9638
P 2350 2875
F 0 "Q5" H 2555 2921 50  0000 L CNN
F 1 "IRF3205" H 2555 2830 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Horizontal_TabDown" H 2600 2800 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf3205.pdf" H 2350 2875 50  0001 L CNN
	1    2350 2875
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 2075 4500 2475
Wire Wire Line
	2450 1875 3250 1875
Connection ~ 3250 1875
Wire Wire Line
	3250 1875 4200 1875
$Comp
L Device:Polyfuse F1
U 1 1 60DA9644
P 3250 1150
F 0 "F1" H 3338 1196 50  0000 L CNN
F 1 "Polyfuse" H 2875 1125 50  0000 L CNN
F 2 "extra:polyfuse" H 3300 950 50  0001 L CNN
F 3 "~" H 3250 1150 50  0001 C CNN
	1    3250 1150
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR03
U 1 1 60DA964B
P 4450 1200
F 0 "#PWR03" H 4450 1050 50  0001 C CNN
F 1 "+3.3V" H 4465 1373 50  0000 C CNN
F 2 "" H 4450 1200 50  0001 C CNN
F 3 "" H 4450 1200 50  0001 C CNN
	1    4450 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 2075 2150 2475
$Comp
L TC4424AVOA:TC4424AVOA IC1
U 1 1 60DA965C
P 1400 1300
F 0 "IC1" H 1950 1565 50  0000 C CNN
F 1 "TC4424AVOA" H 1950 1474 50  0000 C CNN
F 2 "TC4424AVOA:SOIC127P600X175-8N" H 2350 1400 50  0001 L CNN
F 3 "http://componentsearchengine.com/Datasheets/1/TC4424AVOA.pdf" H 2350 1300 50  0001 L CNN
F 4 "3A Dual High-Speed Power MOSFET Drivers" H 2350 1200 50  0001 L CNN "Description"
F 5 "1.75" H 2350 1100 50  0001 L CNN "Height"
F 6 "Microchip" H 2350 1000 50  0001 L CNN "Manufacturer_Name"
F 7 "TC4424AVOA" H 2350 900 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "579-TC4424AVOA" H 2350 800 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/Microchip-Technology/TC4424AVOA/?qs=AkCjCAp%252BzjQJb%2FS4UZt4GA%3D%3D" H 2350 700 50  0001 L CNN "Mouser Price/Stock"
F 10 "TC4424AVOA" H 2350 600 50  0001 L CNN "Arrow Part Number"
F 11 "https://www.arrow.com/en/products/tc4424avoa/microchip-technology" H 2350 500 50  0001 L CNN "Arrow Price/Stock"
	1    1400 1300
	1    0    0    -1  
$EndComp
Text GLabel 2050 2475 0    50   Input ~ 0
PWM1
Text GLabel 4600 2475 2    50   Input ~ 0
PWM2
Wire Wire Line
	4500 2475 4600 2475
Connection ~ 4500 2475
Wire Wire Line
	4500 2475 4500 2875
Wire Wire Line
	2150 2475 2050 2475
Connection ~ 2150 2475
Wire Wire Line
	2150 2475 2150 2875
Text GLabel 2575 1400 2    50   Input ~ 0
PWM1
Text GLabel 2575 1600 2    50   Input ~ 0
PWM2
$Comp
L power:VCC #PWR06
U 1 1 60DA966C
P 2925 1500
F 0 "#PWR06" H 2925 1350 50  0001 C CNN
F 1 "VCC" H 2940 1673 50  0000 C CNN
F 2 "" H 2925 1500 50  0001 C CNN
F 3 "" H 2925 1500 50  0001 C CNN
	1    2925 1500
	1    0    0    -1  
$EndComp
NoConn ~ 2500 1300
NoConn ~ 1400 1300
$Comp
L power:GND #PWR05
U 1 1 60DA9674
P 1025 1500
F 0 "#PWR05" H 1025 1250 50  0001 C CNN
F 1 "GND" H 1030 1327 50  0000 C CNN
F 2 "" H 1025 1500 50  0001 C CNN
F 3 "" H 1025 1500 50  0001 C CNN
	1    1025 1500
	1    0    0    -1  
$EndComp
Text GLabel 1300 1600 0    50   Input ~ 0
IN2
Text GLabel 1300 1400 0    50   Input ~ 0
IN1
Wire Wire Line
	1300 1400 1400 1400
Wire Wire Line
	1400 1500 1025 1500
Wire Wire Line
	1400 1600 1300 1600
Wire Wire Line
	2575 1400 2500 1400
Wire Wire Line
	2500 1500 2925 1500
Wire Wire Line
	2575 1600 2500 1600
Wire Wire Line
	2450 3075 3250 3075
Connection ~ 3250 3075
Wire Wire Line
	3250 3075 4200 3075
Wire Wire Line
	4450 1600 4450 1650
Wire Wire Line
	4450 1500 4450 1600
Connection ~ 4450 1600
Wire Wire Line
	3250 1600 3250 1875
Wire Wire Line
	3250 1500 3250 1600
Connection ~ 3250 1600
Wire Wire Line
	3250 1400 3250 1300
$Comp
L motor_driver_v1-rescue:TMCS1100A2QDR-TMCS1100A2QDR IC2
U 1 1 60DA95FC
P 3250 1300
F 0 "IC2" H 3850 1565 50  0000 C CNN
F 1 "TMCS1100A2QDR" H 3850 1474 50  0000 C CNN
F 2 "TMCS1100A2QDR:SOIC127P600X175-8N" H 4300 1400 50  0001 L CNN
F 3 "https://www.ti.com/lit/gpn/TMCS1100" H 4300 1300 50  0001 L CNN
F 4 "Board Mount Current Sensors Precision isolated current sensor with external reference" H 4300 1200 50  0001 L CNN "Description"
F 5 "1.75" H 4300 1100 50  0001 L CNN "Height"
F 6 "Texas Instruments" H 4300 1000 50  0001 L CNN "Manufacturer_Name"
F 7 "TMCS1100A2QDR" H 4300 900 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "595-TMCS1100A2QDR" H 4300 800 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/Texas-Instruments/TMCS1100A2QDR?qs=sPbYRqrBIVnDChUnLpnImg%3D%3D" H 4300 700 50  0001 L CNN "Mouser Price/Stock"
F 10 "TMCS1100A2QDR" H 4300 600 50  0001 L CNN "Arrow Part Number"
F 11 "https://www.arrow.com/en/products/tmcs1100a2qdr/texas-instruments" H 4300 500 50  0001 L CNN "Arrow Price/Stock"
	1    3250 1300
	1    0    0    -1  
$EndComp
Connection ~ 3250 1300
$Comp
L Connector:Screw_Terminal_01x02 J5
U 1 1 6079FFDE
P 1600 4425
F 0 "J5" V 1518 4237 50  0000 R CNN
F 1 "Screw_Terminal_01x02" V 1473 4237 50  0001 R CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 1600 4425 50  0001 C CNN
F 3 "~" H 1600 4425 50  0001 C CNN
	1    1600 4425
	-1   0    0    1   
$EndComp
Wire Wire Line
	1900 4225 2250 4225
$Comp
L power:VCC #PWR025
U 1 1 60F06130
P 2250 4225
F 0 "#PWR025" H 2250 4075 50  0001 C CNN
F 1 "VCC" H 2265 4398 50  0000 C CNN
F 2 "" H 2250 4225 50  0001 C CNN
F 3 "" H 2250 4225 50  0001 C CNN
	1    2250 4225
	1    0    0    -1  
$EndComp
Connection ~ 2250 4225
Wire Wire Line
	2050 4525 2250 4525
$Comp
L Device:CP C5
U 1 1 60F849C6
P 2250 4375
F 0 "C5" H 2368 4421 50  0000 L CNN
F 1 "470uF" H 2368 4330 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D12.5mm_P5.00mm" H 2288 4225 50  0001 C CNN
F 3 "~" H 2250 4375 50  0001 C CNN
	1    2250 4375
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J2
U 1 1 60D4009D
P 4350 4750
F 0 "J2" H 4458 5031 50  0000 C CNN
F 1 "Conn_01x03_Male" H 4458 4940 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 4350 4750 50  0001 C CNN
F 3 "~" H 4350 4750 50  0001 C CNN
	1    4350 4750
	1    0    0    -1  
$EndComp
Text GLabel 4775 4650 2    50   Input ~ 0
IN1
Text GLabel 4775 4750 2    50   Input ~ 0
IN2
Wire Wire Line
	4775 4650 4550 4650
Wire Wire Line
	4775 4750 4550 4750
Text GLabel 4775 4850 2    50   Input ~ 0
I_MES1
Wire Wire Line
	4775 4850 4550 4850
$Comp
L Connector:Screw_Terminal_01x02 J3
U 1 1 60D811CA
P 7900 2200
F 0 "J3" V 7818 2012 50  0000 R CNN
F 1 "Screw_Terminal_01x02" V 7773 2012 50  0001 R CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 7900 2200 50  0001 C CNN
F 3 "~" H 7900 2200 50  0001 C CNN
	1    7900 2200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8000 2400 8000 2450
Wire Wire Line
	8000 2450 8100 2450
Connection ~ 8850 2450
Wire Wire Line
	8850 2450 8850 2650
Wire Wire Line
	7900 2400 7900 2450
Wire Wire Line
	7900 2450 7800 2450
Wire Wire Line
	7100 2450 7100 2250
Wire Wire Line
	7100 2650 7100 2450
Connection ~ 7100 2450
Wire Wire Line
	8850 2250 8850 2450
$Comp
L power:GND #PWR012
U 1 1 60D811DA
P 7900 3050
F 0 "#PWR012" H 7900 2800 50  0001 C CNN
F 1 "GND" H 7905 2877 50  0000 C CNN
F 2 "" H 7900 3050 50  0001 C CNN
F 3 "" H 7900 3050 50  0001 C CNN
	1    7900 3050
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR02
U 1 1 60D811E0
P 7900 975
F 0 "#PWR02" H 7900 825 50  0001 C CNN
F 1 "VCC" H 7915 1148 50  0000 C CNN
F 2 "" H 7900 975 50  0001 C CNN
F 3 "" H 7900 975 50  0001 C CNN
	1    7900 975 
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 1275 9100 1175
Text GLabel 9200 1375 2    50   Input ~ 0
I_MES2
Wire Wire Line
	9200 1375 9100 1375
$Comp
L power:GND #PWR010
U 1 1 60D811E9
P 9100 1625
F 0 "#PWR010" H 9100 1375 50  0001 C CNN
F 1 "GND" H 9105 1452 50  0000 C CNN
F 2 "" H 9100 1625 50  0001 C CNN
F 3 "" H 9100 1625 50  0001 C CNN
	1    9100 1625
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 60D811EF
P 7950 2700
F 0 "C2" V 7800 2700 50  0000 C CNN
F 1 "10uf" V 8100 2700 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7988 2550 50  0001 C CNN
F 3 "~" H 7950 2700 50  0001 C CNN
	1    7950 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	8100 2700 8100 2450
Connection ~ 8100 2450
Wire Wire Line
	8100 2450 8850 2450
Wire Wire Line
	7800 2700 7800 2450
Connection ~ 7800 2450
Wire Wire Line
	7800 2450 7100 2450
$Comp
L Transistor_FET:IRF3205 Q8
U 1 1 60D811FB
P 8950 2850
F 0 "Q8" H 9155 2896 50  0000 L CNN
F 1 "IRF3205" H 9155 2805 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Horizontal_TabDown" H 9200 2775 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf3205.pdf" H 8950 2850 50  0001 L CNN
	1    8950 2850
	-1   0    0    -1  
$EndComp
$Comp
L Transistor_FET:IRF4905 Q3
U 1 1 60D81201
P 7000 2050
F 0 "Q3" H 7205 2004 50  0000 L CNN
F 1 "IRF4905" H 7205 2095 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Horizontal_TabDown" H 7200 1975 50  0001 L CIN
F 3 "http://www.infineon.com/dgdl/irf4905.pdf?fileId=5546d462533600a4015355e32165197c" H 7000 2050 50  0001 L CNN
	1    7000 2050
	1    0    0    1   
$EndComp
$Comp
L Transistor_FET:IRF4905 Q4
U 1 1 60D81207
P 8950 2050
F 0 "Q4" H 9155 2004 50  0000 L CNN
F 1 "IRF4905" H 9155 2095 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Horizontal_TabDown" H 9150 1975 50  0001 L CIN
F 3 "http://www.infineon.com/dgdl/irf4905.pdf?fileId=5546d462533600a4015355e32165197c" H 8950 2050 50  0001 L CNN
	1    8950 2050
	-1   0    0    1   
$EndComp
$Comp
L Transistor_FET:IRF3205 Q7
U 1 1 60D8120D
P 7000 2850
F 0 "Q7" H 7205 2896 50  0000 L CNN
F 1 "IRF3205" H 7205 2805 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Horizontal_TabDown" H 7250 2775 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf3205.pdf" H 7000 2850 50  0001 L CNN
	1    7000 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 2050 9150 2450
Wire Wire Line
	7100 1850 7900 1850
Connection ~ 7900 1850
Wire Wire Line
	7900 1850 8850 1850
$Comp
L Device:Polyfuse F2
U 1 1 60D81217
P 7900 1125
F 0 "F2" H 7988 1171 50  0000 L CNN
F 1 "Polyfuse" H 7525 1100 50  0000 L CNN
F 2 "extra:polyfuse" H 7950 925 50  0001 L CNN
F 3 "~" H 7900 1125 50  0001 C CNN
	1    7900 1125
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR04
U 1 1 60D8121D
P 9100 1175
F 0 "#PWR04" H 9100 1025 50  0001 C CNN
F 1 "+3.3V" H 9115 1348 50  0000 C CNN
F 2 "" H 9100 1175 50  0001 C CNN
F 3 "" H 9100 1175 50  0001 C CNN
	1    9100 1175
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 2050 6800 2450
$Comp
L TC4424AVOA:TC4424AVOA IC3
U 1 1 60D8122C
P 6050 1275
F 0 "IC3" H 6600 1540 50  0000 C CNN
F 1 "TC4424AVOA" H 6600 1449 50  0000 C CNN
F 2 "TC4424AVOA:SOIC127P600X175-8N" H 7000 1375 50  0001 L CNN
F 3 "http://componentsearchengine.com/Datasheets/1/TC4424AVOA.pdf" H 7000 1275 50  0001 L CNN
F 4 "3A Dual High-Speed Power MOSFET Drivers" H 7000 1175 50  0001 L CNN "Description"
F 5 "1.75" H 7000 1075 50  0001 L CNN "Height"
F 6 "Microchip" H 7000 975 50  0001 L CNN "Manufacturer_Name"
F 7 "TC4424AVOA" H 7000 875 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "579-TC4424AVOA" H 7000 775 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/Microchip-Technology/TC4424AVOA/?qs=AkCjCAp%252BzjQJb%2FS4UZt4GA%3D%3D" H 7000 675 50  0001 L CNN "Mouser Price/Stock"
F 10 "TC4424AVOA" H 7000 575 50  0001 L CNN "Arrow Part Number"
F 11 "https://www.arrow.com/en/products/tc4424avoa/microchip-technology" H 7000 475 50  0001 L CNN "Arrow Price/Stock"
	1    6050 1275
	1    0    0    -1  
$EndComp
Text GLabel 6700 2450 0    50   Input ~ 0
PWM3
Text GLabel 9250 2450 2    50   Input ~ 0
PWM4
Wire Wire Line
	9150 2450 9250 2450
Connection ~ 9150 2450
Wire Wire Line
	9150 2450 9150 2850
Wire Wire Line
	6800 2450 6700 2450
Connection ~ 6800 2450
Wire Wire Line
	6800 2450 6800 2850
Text GLabel 7225 1375 2    50   Input ~ 0
PWM3
Text GLabel 7225 1575 2    50   Input ~ 0
PWM4
$Comp
L power:VCC #PWR08
U 1 1 60D8123C
P 7575 1475
F 0 "#PWR08" H 7575 1325 50  0001 C CNN
F 1 "VCC" H 7590 1648 50  0000 C CNN
F 2 "" H 7575 1475 50  0001 C CNN
F 3 "" H 7575 1475 50  0001 C CNN
	1    7575 1475
	1    0    0    -1  
$EndComp
NoConn ~ 7150 1275
NoConn ~ 6050 1275
$Comp
L power:GND #PWR07
U 1 1 60D81244
P 5675 1475
F 0 "#PWR07" H 5675 1225 50  0001 C CNN
F 1 "GND" H 5680 1302 50  0000 C CNN
F 2 "" H 5675 1475 50  0001 C CNN
F 3 "" H 5675 1475 50  0001 C CNN
	1    5675 1475
	1    0    0    -1  
$EndComp
Text GLabel 5950 1575 0    50   Input ~ 0
IN4
Text GLabel 5950 1375 0    50   Input ~ 0
IN3
Wire Wire Line
	5950 1375 6050 1375
Wire Wire Line
	6050 1475 5675 1475
Wire Wire Line
	6050 1575 5950 1575
Wire Wire Line
	7225 1375 7150 1375
Wire Wire Line
	7150 1475 7575 1475
Wire Wire Line
	7225 1575 7150 1575
Wire Wire Line
	7100 3050 7900 3050
Connection ~ 7900 3050
Wire Wire Line
	7900 3050 8850 3050
Wire Wire Line
	9100 1575 9100 1625
Wire Wire Line
	9100 1475 9100 1575
Connection ~ 9100 1575
Wire Wire Line
	7900 1575 7900 1850
Wire Wire Line
	7900 1475 7900 1575
Connection ~ 7900 1575
Wire Wire Line
	7900 1375 7900 1275
$Comp
L motor_driver_v1-rescue:TMCS1100A2QDR-TMCS1100A2QDR IC4
U 1 1 60D81264
P 7900 1275
F 0 "IC4" H 8500 1540 50  0000 C CNN
F 1 "TMCS1100A2QDR" H 8500 1449 50  0000 C CNN
F 2 "TMCS1100A2QDR:SOIC127P600X175-8N" H 8950 1375 50  0001 L CNN
F 3 "https://www.ti.com/lit/gpn/TMCS1100" H 8950 1275 50  0001 L CNN
F 4 "Board Mount Current Sensors Precision isolated current sensor with external reference" H 8950 1175 50  0001 L CNN "Description"
F 5 "1.75" H 8950 1075 50  0001 L CNN "Height"
F 6 "Texas Instruments" H 8950 975 50  0001 L CNN "Manufacturer_Name"
F 7 "TMCS1100A2QDR" H 8950 875 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "595-TMCS1100A2QDR" H 8950 775 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/Texas-Instruments/TMCS1100A2QDR?qs=sPbYRqrBIVnDChUnLpnImg%3D%3D" H 8950 675 50  0001 L CNN "Mouser Price/Stock"
F 10 "TMCS1100A2QDR" H 8950 575 50  0001 L CNN "Arrow Part Number"
F 11 "https://www.arrow.com/en/products/tmcs1100a2qdr/texas-instruments" H 8950 475 50  0001 L CNN "Arrow Price/Stock"
	1    7900 1275
	1    0    0    -1  
$EndComp
Connection ~ 7900 1275
$Comp
L Connector:Conn_01x03_Male J4
U 1 1 60D85A0A
P 5300 4775
F 0 "J4" H 5408 5056 50  0000 C CNN
F 1 "Conn_01x03_Male" H 5408 4965 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5300 4775 50  0001 C CNN
F 3 "~" H 5300 4775 50  0001 C CNN
	1    5300 4775
	1    0    0    -1  
$EndComp
Text GLabel 5725 4675 2    50   Input ~ 0
IN3
Text GLabel 5725 4775 2    50   Input ~ 0
IN4
Wire Wire Line
	5725 4675 5500 4675
Wire Wire Line
	5725 4775 5500 4775
Text GLabel 5725 4875 2    50   Input ~ 0
I_MES2
Wire Wire Line
	5725 4875 5500 4875
$EndSCHEMATC
