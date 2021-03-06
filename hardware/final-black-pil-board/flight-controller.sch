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
L RASPBERRY_PI_4B_+_Samtec_ESP-1:RASPBERRY_PI_4B_+_Samtec_ESP-120-33-G-D J8
U 1 1 616B8987
P 9500 2825
F 0 "J8" H 10150 752 50  0000 C CNN
F 1 "RASPBERRY_PI_4B_+_Samtec_ESP-120-33-G-D" H 10150 2999 50  0001 C CNN
F 2 "RASPBERRY_PI_4B_+_Samtec_ESP-1:RASPBERRYPI4B4GB" H 10650 2925 50  0001 L CNN
F 3 "https://www.raspberrypi.org/documentation/hardware/raspberrypi/mechanical/rpi_MECH_4b_4p0.pdf" H 10650 2825 50  0001 L CNN
F 4 "RASPBERRY PI 4 MODEL B with Samtec ESP-120-33-G-D connector drawn from underneath for use as a plug in module." H 10650 2725 50  0001 L CNN "Description"
F 5 "24.3" H 10650 2625 50  0001 L CNN "Height"
F 6 "RASPBERRY-PI" H 10650 2525 50  0001 L CNN "Manufacturer_Name"
F 7 "RASPBERRY PI 4B + Samtec ESP-120-33-G-D" H 10650 2425 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "" H 10650 2325 50  0001 L CNN "Mouser Part Number"
F 9 "" H 10650 2225 50  0001 L CNN "Mouser Price/Stock"
F 10 "" H 10650 2125 50  0001 L CNN "Arrow Part Number"
F 11 "" H 10650 2025 50  0001 L CNN "Arrow Price/Stock"
	1    9500 2825
	-1   0    0    1   
$EndComp
$Comp
L BMI088:BMI088 IC1
U 1 1 616C0EAE
P 3850 2325
F 0 "IC1" H 5294 2321 50  0000 L CNN
F 1 "BMI088" H 5294 2230 50  0000 L CNN
F 2 "BMI088:BMI088" H 5100 2825 50  0001 L CNN
F 3 "https://ae-bst.resource.bosch.com/media/_tech/media/datasheets/BST-BMI088-DS001-13.pdf" H 5100 2725 50  0001 L CNN
F 4 "Inertial Measurement Unit Digital Output 2.5V/3.3V Automotive" H 5100 2625 50  0001 L CNN "Description"
F 5 "1.45" H 5100 2525 50  0001 L CNN "Height"
F 6 "Bosch Sensortec" H 5100 2425 50  0001 L CNN "Manufacturer_Name"
F 7 "BMI088" H 5100 2325 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "262-BMI088" H 5100 2225 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/Bosch-Sensortec/BMI088?qs=f9yNj16SXrIMFspTV6RB6Q%3D%3D" H 5100 2125 50  0001 L CNN "Mouser Price/Stock"
F 10 "BMI088" H 5100 2025 50  0001 L CNN "Arrow Part Number"
F 11 "https://www.arrow.com/en/products/bmi088/bosch" H 5100 1925 50  0001 L CNN "Arrow Price/Stock"
	1    3850 2325
	0    -1   -1   0   
$EndComp
$Comp
L BMP390:BMP390 IC2
U 1 1 616C243E
P 6025 1525
F 0 "IC2" H 6350 1925 50  0000 C CNN
F 1 "BMP390" H 6625 1650 50  0000 C CNN
F 2 "BMP390:BMP390" H 7075 2025 50  0001 L CNN
F 3 "https://www.bosch-sensortec.com/media/boschsensortec/downloads/datasheets/bst-bmp390-ds002.pdf" H 7075 1925 50  0001 L CNN
F 4 "Board Mount Pressure Sensors" H 7075 1825 50  0001 L CNN "Description"
F 5 "0.8" H 7075 1725 50  0001 L CNN "Height"
F 6 "Bosch Sensortec" H 7075 1625 50  0001 L CNN "Manufacturer_Name"
F 7 "BMP390" H 7075 1525 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "262-BMP390" H 7075 1425 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/Bosch-Sensortec/BMP390?qs=QNEnbhJQKvYQVfvRMgo2YA%3D%3D" H 7075 1325 50  0001 L CNN "Mouser Price/Stock"
F 10 "" H 7075 1225 50  0001 L CNN "Arrow Part Number"
F 11 "" H 7075 1125 50  0001 L CNN "Arrow Price/Stock"
	1    6025 1525
	1    0    0    -1  
$EndComp
$Comp
L IIS2DLPCTR:IIS2DLPCTR AC1
U 1 1 616C2D44
P 1125 6625
F 0 "AC1" H 1875 6890 50  0000 C CNN
F 1 "IIS2DLPCTR" H 1875 6799 50  0000 C CNN
F 2 "IIS2DLPCTR:LGA-12" H 2475 6725 50  0001 L CNN
F 3 "https://www.st.com/resource/en/datasheet/iis2dlpc.pdf" H 2475 6625 50  0001 L CNN
F 4 "Accelerometers MEMS digital output motion sensor: high-performance ultra-low-power 3-axis accelerometer for industrial applications" H 2475 6525 50  0001 L CNN "Description"
F 5 "" H 2475 6425 50  0001 L CNN "Height"
F 6 "STMicroelectronics" H 2475 6325 50  0001 L CNN "Manufacturer_Name"
F 7 "IIS2DLPCTR" H 2475 6225 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "511-IIS2DLPCTR" H 2475 6125 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/STMicroelectronics/IIS2DLPCTR/?qs=%252BEew9%252B0nqrCvhJ3eU7R1xw%3D%3D" H 2475 6025 50  0001 L CNN "Mouser Price/Stock"
F 10 "IIS2DLPCTR" H 2475 5925 50  0001 L CNN "Arrow Part Number"
F 11 "https://www.arrow.com/en/products/iis2dlpctr/stmicroelectronics" H 2475 5825 50  0001 L CNN "Arrow Price/Stock"
	1    1125 6625
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0101
U 1 1 617E27B6
P 8125 875
F 0 "#PWR0101" H 8125 725 50  0001 C CNN
F 1 "+5V" H 8140 1048 50  0000 C CNN
F 2 "" H 8125 875 50  0001 C CNN
F 3 "" H 8125 875 50  0001 C CNN
	1    8125 875 
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 925  8125 925 
Wire Wire Line
	8125 925  8125 875 
Wire Wire Line
	8200 1025 8125 1025
Wire Wire Line
	8125 1025 8125 925 
Connection ~ 8125 925 
$Comp
L power:Earth #PWR0102
U 1 1 617E73D0
P 8125 1125
F 0 "#PWR0102" H 8125 875 50  0001 C CNN
F 1 "Earth" H 8125 975 50  0001 C CNN
F 2 "" H 8125 1125 50  0001 C CNN
F 3 "~" H 8125 1125 50  0001 C CNN
	1    8125 1125
	0    1    1    0   
$EndComp
Wire Wire Line
	8200 1125 8125 1125
$Comp
L power:Earth #PWR0103
U 1 1 617E9D5C
P 8125 1525
F 0 "#PWR0103" H 8125 1275 50  0001 C CNN
F 1 "Earth" H 8125 1375 50  0001 C CNN
F 2 "" H 8125 1525 50  0001 C CNN
F 3 "~" H 8125 1525 50  0001 C CNN
	1    8125 1525
	0    1    1    0   
$EndComp
Wire Wire Line
	8200 1525 8125 1525
$Comp
L power:Earth #PWR0104
U 1 1 617EBECE
P 8125 1825
F 0 "#PWR0104" H 8125 1575 50  0001 C CNN
F 1 "Earth" H 8125 1675 50  0001 C CNN
F 2 "" H 8125 1825 50  0001 C CNN
F 3 "~" H 8125 1825 50  0001 C CNN
	1    8125 1825
	0    1    1    0   
$EndComp
Wire Wire Line
	8200 1825 8125 1825
$Comp
L power:Earth #PWR0105
U 1 1 617ED2E6
P 8125 2325
F 0 "#PWR0105" H 8125 2075 50  0001 C CNN
F 1 "Earth" H 8125 2175 50  0001 C CNN
F 2 "" H 8125 2325 50  0001 C CNN
F 3 "~" H 8125 2325 50  0001 C CNN
	1    8125 2325
	0    1    1    0   
$EndComp
Wire Wire Line
	8200 2325 8125 2325
$Comp
L power:Earth #PWR0106
U 1 1 617EE5E3
P 8125 2525
F 0 "#PWR0106" H 8125 2275 50  0001 C CNN
F 1 "Earth" H 8125 2375 50  0001 C CNN
F 2 "" H 8125 2525 50  0001 C CNN
F 3 "~" H 8125 2525 50  0001 C CNN
	1    8125 2525
	0    1    1    0   
$EndComp
Wire Wire Line
	8200 2525 8125 2525
$Comp
L power:Earth #PWR0107
U 1 1 617EFBBC
P 9575 2825
F 0 "#PWR0107" H 9575 2575 50  0001 C CNN
F 1 "Earth" H 9575 2675 50  0001 C CNN
F 2 "" H 9575 2825 50  0001 C CNN
F 3 "~" H 9575 2825 50  0001 C CNN
	1    9575 2825
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9500 2825 9575 2825
$Comp
L power:Earth #PWR0108
U 1 1 617F176C
P 9575 2125
F 0 "#PWR0108" H 9575 1875 50  0001 C CNN
F 1 "Earth" H 9575 1975 50  0001 C CNN
F 2 "" H 9575 2125 50  0001 C CNN
F 3 "~" H 9575 2125 50  0001 C CNN
	1    9575 2125
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9500 2125 9575 2125
$Comp
L power:Earth #PWR0109
U 1 1 617F3389
P 9575 1325
F 0 "#PWR0109" H 9575 1075 50  0001 C CNN
F 1 "Earth" H 9575 1175 50  0001 C CNN
F 2 "" H 9575 1325 50  0001 C CNN
F 3 "~" H 9575 1325 50  0001 C CNN
	1    9575 1325
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9500 1325 9575 1325
NoConn ~ 9500 925 
NoConn ~ 9500 1025
NoConn ~ 9500 1125
NoConn ~ 9500 1225
NoConn ~ 9500 1425
NoConn ~ 9500 1525
NoConn ~ 9500 1625
NoConn ~ 9500 1725
NoConn ~ 9500 1825
NoConn ~ 9500 1925
NoConn ~ 9500 2025
NoConn ~ 9500 2225
NoConn ~ 9500 2325
NoConn ~ 9500 2425
NoConn ~ 9500 2525
NoConn ~ 9500 2625
NoConn ~ 9500 2725
NoConn ~ 8200 2825
NoConn ~ 8200 2725
NoConn ~ 8200 2625
NoConn ~ 8200 2425
NoConn ~ 8200 2225
NoConn ~ 8200 2125
NoConn ~ 8200 2025
NoConn ~ 8200 1925
NoConn ~ 8200 1725
NoConn ~ 8200 1625
NoConn ~ 8200 1425
Text GLabel 8125 1225 0    50   Input ~ 0
PI_TX
Text GLabel 8125 1325 0    50   Input ~ 0
PI_RX
Wire Wire Line
	8200 1225 8125 1225
Wire Wire Line
	8200 1325 8125 1325
Wire Bus Line
	7825 500  7825 3000
Wire Bus Line
	7825 3000 9850 3000
Wire Bus Line
	9850 3000 9850 500 
Wire Bus Line
	7825 500  9850 500 
Wire Wire Line
	7225 1625 7225 1725
$Comp
L power:Earth #PWR0110
U 1 1 61885953
P 7225 1875
F 0 "#PWR0110" H 7225 1625 50  0001 C CNN
F 1 "Earth" H 7225 1725 50  0001 C CNN
F 2 "" H 7225 1875 50  0001 C CNN
F 3 "~" H 7225 1875 50  0001 C CNN
	1    7225 1875
	1    0    0    -1  
$EndComp
Connection ~ 7225 1725
Wire Wire Line
	7425 1825 7425 1850
Wire Wire Line
	7425 1850 7225 1850
Wire Wire Line
	7225 1850 7225 1875
Wire Wire Line
	7225 1725 7225 1850
Connection ~ 7225 1850
$Comp
L power:+3.3V #PWR0111
U 1 1 6189AB24
P 7425 1500
F 0 "#PWR0111" H 7425 1350 50  0001 C CNN
F 1 "+3.3V" H 7440 1673 50  0000 C CNN
F 2 "" H 7425 1500 50  0001 C CNN
F 3 "" H 7425 1500 50  0001 C CNN
	1    7425 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7425 1525 7425 1500
$Comp
L power:+3.3V #PWR0112
U 1 1 6189EFB9
P 6625 725
F 0 "#PWR0112" H 6625 575 50  0001 C CNN
F 1 "+3.3V" H 6640 898 50  0000 C CNN
F 2 "" H 6625 725 50  0001 C CNN
F 3 "" H 6625 725 50  0001 C CNN
	1    6625 725 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 618A3345
P 7100 925
F 0 "C7" H 6985 879 50  0000 R CNN
F 1 "100n" H 6985 970 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7138 775 50  0001 C CNN
F 3 "~" H 7100 925 50  0001 C CNN
	1    7100 925 
	-1   0    0    1   
$EndComp
$Comp
L power:Earth #PWR0113
U 1 1 618B1E3B
P 7100 1075
F 0 "#PWR0113" H 7100 825 50  0001 C CNN
F 1 "Earth" H 7100 925 50  0001 C CNN
F 2 "" H 7100 1075 50  0001 C CNN
F 3 "~" H 7100 1075 50  0001 C CNN
	1    7100 1075
	1    0    0    -1  
$EndComp
Wire Wire Line
	6525 825  6525 800 
Wire Wire Line
	6525 800  6375 800 
Text GLabel 6375 800  0    50   Input ~ 0
I2C_SCL
$Comp
L power:Earth #PWR0114
U 1 1 618B9907
P 6025 1525
F 0 "#PWR0114" H 6025 1275 50  0001 C CNN
F 1 "Earth" H 6025 1375 50  0001 C CNN
F 2 "" H 6025 1525 50  0001 C CNN
F 3 "~" H 6025 1525 50  0001 C CNN
	1    6025 1525
	0    1    1    0   
$EndComp
$Comp
L power:Earth #PWR0115
U 1 1 618C4D53
P 6025 1725
F 0 "#PWR0115" H 6025 1475 50  0001 C CNN
F 1 "Earth" H 6025 1575 50  0001 C CNN
F 2 "" H 6025 1725 50  0001 C CNN
F 3 "~" H 6025 1725 50  0001 C CNN
	1    6025 1725
	1    0    0    -1  
$EndComp
Text GLabel 5950 1625 0    50   Input ~ 0
I2C_SDA
Wire Wire Line
	5950 1625 6025 1625
$Comp
L power:+3.3V #PWR0116
U 1 1 618D2180
P 6525 2325
F 0 "#PWR0116" H 6525 2175 50  0001 C CNN
F 1 "+3.3V" H 6700 2350 50  0000 C CNN
F 2 "" H 6525 2325 50  0001 C CNN
F 3 "" H 6525 2325 50  0001 C CNN
	1    6525 2325
	-1   0    0    1   
$EndComp
Text GLabel 6625 2500 0    50   Input ~ 0
PRES_INT
Wire Wire Line
	6625 2325 6625 2500
Wire Wire Line
	6625 775  6625 825 
Wire Wire Line
	6625 775  7100 775 
Wire Wire Line
	6625 725  6625 775 
Connection ~ 6625 775 
Wire Bus Line
	7775 500  7775 2625
Text Notes 6925 775  0    87   ~ 0
PRESSURE \nSENSOR
$Comp
L power:+3.3V #PWR0117
U 1 1 6197D86C
P 3125 1300
F 0 "#PWR0117" H 3125 1150 50  0001 C CNN
F 1 "+3.3V" H 3140 1473 50  0000 C CNN
F 2 "" H 3125 1300 50  0001 C CNN
F 3 "" H 3125 1300 50  0001 C CNN
	1    3125 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 1325 3125 1325
Wire Wire Line
	3125 1325 3125 1300
$Comp
L power:+3.3V #PWR0118
U 1 1 6198C1E3
P 4650 1825
F 0 "#PWR0118" H 4650 1675 50  0001 C CNN
F 1 "+3.3V" V 4650 2050 50  0000 C CNN
F 2 "" H 4650 1825 50  0001 C CNN
F 3 "" H 4650 1825 50  0001 C CNN
	1    4650 1825
	0    1    1    0   
$EndComp
NoConn ~ 3150 1525
$Comp
L power:+3.3V #PWR0119
U 1 1 61994C09
P 4650 1925
F 0 "#PWR0119" H 4650 1775 50  0001 C CNN
F 1 "+3.3V" V 4650 2150 50  0000 C CNN
F 2 "" H 4650 1925 50  0001 C CNN
F 3 "" H 4650 1925 50  0001 C CNN
	1    4650 1925
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR0120
U 1 1 61997746
P 4650 1425
F 0 "#PWR0120" H 4650 1275 50  0001 C CNN
F 1 "+3.3V" V 4650 1650 50  0000 C CNN
F 2 "" H 4650 1425 50  0001 C CNN
F 3 "" H 4650 1425 50  0001 C CNN
	1    4650 1425
	0    1    1    0   
$EndComp
Text GLabel 3825 2325 0    50   Input ~ 0
ACCEL_INT
Wire Wire Line
	3850 2325 3825 2325
NoConn ~ 3150 1925
NoConn ~ 4650 1725
Text GLabel 4700 1625 2    50   Input ~ 0
GYRO_INT
Wire Wire Line
	4700 1625 4650 1625
Wire Wire Line
	3150 1625 3050 1625
Wire Wire Line
	3050 1625 3050 1425
Wire Wire Line
	3050 1425 3150 1425
$Comp
L power:+3.3V #PWR0121
U 1 1 619CBF64
P 2925 1725
F 0 "#PWR0121" H 2925 1575 50  0001 C CNN
F 1 "+3.3V" H 2775 1800 50  0000 C CNN
F 2 "" H 2925 1725 50  0001 C CNN
F 3 "" H 2925 1725 50  0001 C CNN
	1    2925 1725
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 1725 2925 1725
$Comp
L Device:C C3
U 1 1 619E23F3
P 2925 1875
F 0 "C3" H 3025 1800 50  0000 R CNN
F 1 "100n" H 3125 1950 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2963 1725 50  0001 C CNN
F 3 "~" H 2925 1875 50  0001 C CNN
	1    2925 1875
	-1   0    0    1   
$EndComp
Connection ~ 3050 1425
$Comp
L power:Earth #PWR0122
U 1 1 619C2E41
P 2900 1425
F 0 "#PWR0122" H 2900 1175 50  0001 C CNN
F 1 "Earth" H 2900 1275 50  0001 C CNN
F 2 "" H 2900 1425 50  0001 C CNN
F 3 "~" H 2900 1425 50  0001 C CNN
	1    2900 1425
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 1425 2900 1425
$Comp
L power:Earth #PWR0123
U 1 1 619E7E15
P 2925 2025
F 0 "#PWR0123" H 2925 1775 50  0001 C CNN
F 1 "Earth" H 2925 1875 50  0001 C CNN
F 2 "" H 2925 2025 50  0001 C CNN
F 3 "~" H 2925 2025 50  0001 C CNN
	1    2925 2025
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0124
U 1 1 619EE9BB
P 5225 1525
F 0 "#PWR0124" H 5225 1375 50  0001 C CNN
F 1 "+3.3V" H 5075 1600 50  0000 C CNN
F 2 "" H 5225 1525 50  0001 C CNN
F 3 "" H 5225 1525 50  0001 C CNN
	1    5225 1525
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 619EE9C2
P 5225 1675
F 0 "C6" H 5325 1600 50  0000 R CNN
F 1 "100n" H 5425 1750 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5263 1525 50  0001 C CNN
F 3 "~" H 5225 1675 50  0001 C CNN
	1    5225 1675
	1    0    0    1   
$EndComp
$Comp
L power:Earth #PWR0125
U 1 1 619EE9C8
P 5225 1825
F 0 "#PWR0125" H 5225 1575 50  0001 C CNN
F 1 "Earth" H 5225 1675 50  0001 C CNN
F 2 "" H 5225 1825 50  0001 C CNN
F 3 "~" H 5225 1825 50  0001 C CNN
	1    5225 1825
	-1   0    0    -1  
$EndComp
Connection ~ 5225 1525
Wire Wire Line
	4650 1525 5225 1525
Connection ~ 2925 1725
Wire Bus Line
	2625 500  2625 2625
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J5
U 1 1 616E9CAE
P 1000 3875
F 0 "J5" H 1050 4300 50  0000 C CNN
F 1 "Conn_02x08_Odd_Even" H 1050 4301 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x08_P2.54mm_Vertical" H 1000 3875 50  0001 C CNN
F 3 "~" H 1000 3875 50  0001 C CNN
	1    1000 3875
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J1
U 1 1 616EA93B
P 875 3025
F 0 "J1" H 955 2971 50  0000 L CNN
F 1 "Conn_01x04" H 955 2926 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 875 3025 50  0001 C CNN
F 3 "~" H 875 3025 50  0001 C CNN
	1    875  3025
	-1   0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0126
U 1 1 616FB1E3
P 1150 2875
F 0 "#PWR0126" H 1150 2725 50  0001 C CNN
F 1 "+3.3V" H 1165 3048 50  0000 C CNN
F 2 "" H 1150 2875 50  0001 C CNN
F 3 "" H 1150 2875 50  0001 C CNN
	1    1150 2875
	-1   0    0    -1  
$EndComp
$Comp
L power:Earth #PWR0127
U 1 1 616FE68F
P 1350 3250
F 0 "#PWR0127" H 1350 3000 50  0001 C CNN
F 1 "Earth" H 1350 3100 50  0001 C CNN
F 2 "" H 1350 3250 50  0001 C CNN
F 3 "~" H 1350 3250 50  0001 C CNN
	1    1350 3250
	-1   0    0    -1  
$EndComp
Text GLabel 1150 3025 2    50   Input ~ 0
UART_TX
Text GLabel 1150 3125 2    50   Input ~ 0
UART_RX
Wire Wire Line
	1075 3125 1150 3125
Wire Wire Line
	1075 3025 1150 3025
Wire Wire Line
	1075 2925 1150 2925
Wire Wire Line
	1150 2925 1150 2875
Wire Wire Line
	1350 3225 1350 3250
Wire Wire Line
	650  4300 650  4275
Wire Wire Line
	650  4275 700  4275
Wire Wire Line
	650  4275 650  4175
Wire Wire Line
	650  4175 700  4175
Connection ~ 650  4275
Wire Wire Line
	650  4175 650  4075
Wire Wire Line
	700  4075 650  4075
Connection ~ 650  4175
Wire Wire Line
	650  4075 650  3975
Wire Wire Line
	650  3975 700  3975
Connection ~ 650  4075
Wire Wire Line
	650  3975 650  3875
Wire Wire Line
	650  3875 700  3875
Connection ~ 650  3975
Wire Wire Line
	650  3875 650  3775
Wire Wire Line
	650  3775 700  3775
Connection ~ 650  3875
Wire Wire Line
	650  3775 650  3675
Wire Wire Line
	650  3675 700  3675
Connection ~ 650  3775
Wire Wire Line
	650  3675 650  3575
Wire Wire Line
	650  3575 700  3575
Connection ~ 650  3675
Text GLabel 1300 3575 2    50   Input ~ 0
PWM1
Text GLabel 1300 3675 2    50   Input ~ 0
PWM2
Text GLabel 1300 3775 2    50   Input ~ 0
PWM3
Text GLabel 1300 3875 2    50   Input ~ 0
PWM4
Text GLabel 1300 3975 2    50   Input ~ 0
PWM5
Text GLabel 1300 4075 2    50   Input ~ 0
PWM6
Text GLabel 1300 4175 2    50   Input ~ 0
PWM7
Text GLabel 1300 4275 2    50   Input ~ 0
PWM8
Wire Wire Line
	1300 3575 1200 3575
Wire Wire Line
	1300 3675 1200 3675
Wire Wire Line
	1300 3775 1200 3775
Wire Wire Line
	1300 3875 1200 3875
Wire Wire Line
	1300 3975 1200 3975
Wire Wire Line
	1300 4075 1200 4075
Wire Wire Line
	1300 4175 1200 4175
Wire Wire Line
	1300 4275 1200 4275
Wire Wire Line
	1075 4650 975  4650
Wire Wire Line
	875  4650 975  4650
Connection ~ 975  4650
Wire Wire Line
	875  4650 775  4650
Connection ~ 875  4650
Connection ~ 1075 4650
Wire Wire Line
	775  5150 875  5150
Connection ~ 875  5150
Wire Wire Line
	875  5150 975  5150
Connection ~ 975  5150
Wire Wire Line
	975  5150 1075 5150
Connection ~ 1075 5150
Text GLabel 1750 4650 2    50   Input ~ 0
I2C_SDA
Text GLabel 1750 4775 2    50   Input ~ 0
I2C_SCL
Wire Wire Line
	1075 5150 1250 5150
Text GLabel 3750 900  0    50   Input ~ 0
I2C_SCL
Wire Wire Line
	3850 925  3850 900 
Wire Wire Line
	3850 900  3750 900 
Text GLabel 4700 1325 2    50   Input ~ 0
I2C_SDA
Wire Wire Line
	4700 1325 4650 1325
Text GLabel 1075 6625 0    50   Input ~ 0
I2C_SCL
NoConn ~ 1125 6725
$Comp
L power:+3.3V #PWR0128
U 1 1 618242F7
P 1125 6825
F 0 "#PWR0128" H 1125 6675 50  0001 C CNN
F 1 "+3.3V" V 1125 7050 50  0000 C CNN
F 2 "" H 1125 6825 50  0001 C CNN
F 3 "" H 1125 6825 50  0001 C CNN
	1    1125 6825
	0    -1   1    0   
$EndComp
Text GLabel 1075 6925 0    50   Input ~ 0
I2C_SDA
$Comp
L Device:C C1
U 1 1 61838C37
P 725 7225
F 0 "C1" H 840 7271 50  0000 L CNN
F 1 "220nF" H 840 7180 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 763 7075 50  0001 C CNN
F 3 "~" H 725 7225 50  0001 C CNN
	1    725  7225
	1    0    0    -1  
$EndComp
Wire Wire Line
	1125 7025 725  7025
Wire Wire Line
	725  7025 725  7075
Wire Wire Line
	1125 7125 1125 7375
Wire Wire Line
	1125 7375 725  7375
$Comp
L power:Earth #PWR0129
U 1 1 618492AF
P 725 7375
F 0 "#PWR0129" H 725 7125 50  0001 C CNN
F 1 "Earth" H 725 7225 50  0001 C CNN
F 2 "" H 725 7375 50  0001 C CNN
F 3 "~" H 725 7375 50  0001 C CNN
	1    725  7375
	1    0    0    -1  
$EndComp
Wire Wire Line
	2625 6925 2625 6825
NoConn ~ 2625 7025
NoConn ~ 2625 7125
$Comp
L power:Earth #PWR0130
U 1 1 61868F3B
P 2625 6725
F 0 "#PWR0130" H 2625 6475 50  0001 C CNN
F 1 "Earth" H 2625 6575 50  0001 C CNN
F 2 "" H 2625 6725 50  0001 C CNN
F 3 "~" H 2625 6725 50  0001 C CNN
	1    2625 6725
	0    -1   -1   0   
$EndComp
Text GLabel 2675 6625 2    50   Input ~ 0
MAG_INT
Wire Wire Line
	2675 6625 2625 6625
$Comp
L Device:C C2
U 1 1 61881EF0
P 2875 7075
F 0 "C2" H 2975 7000 50  0000 R CNN
F 1 "100n" H 3075 7150 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2913 6925 50  0001 C CNN
F 3 "~" H 2875 7075 50  0001 C CNN
	1    2875 7075
	-1   0    0    1   
$EndComp
$Comp
L Device:C C4
U 1 1 61888644
P 3175 6975
F 0 "C4" H 3275 6900 50  0000 R CNN
F 1 "100n" H 3375 7050 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3213 6825 50  0001 C CNN
F 3 "~" H 3175 6975 50  0001 C CNN
	1    3175 6975
	-1   0    0    1   
$EndComp
$Comp
L Device:C C5
U 1 1 6188EE47
P 3475 6975
F 0 "C5" H 3575 6900 50  0000 R CNN
F 1 "10uF" H 3675 7050 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3513 6825 50  0001 C CNN
F 3 "~" H 3475 6975 50  0001 C CNN
	1    3475 6975
	-1   0    0    1   
$EndComp
Wire Wire Line
	3475 6825 3175 6825
Wire Wire Line
	3175 6825 2625 6825
Connection ~ 3175 6825
Connection ~ 2625 6825
Wire Wire Line
	2625 6925 2875 6925
Connection ~ 2625 6925
Wire Wire Line
	3475 7125 3475 7225
Wire Wire Line
	3475 7225 3175 7225
Wire Wire Line
	3175 7125 3175 7225
Connection ~ 3175 7225
Wire Wire Line
	3175 7225 2875 7225
$Comp
L power:Earth #PWR0131
U 1 1 618BE129
P 3175 7225
F 0 "#PWR0131" H 3175 6975 50  0001 C CNN
F 1 "Earth" H 3175 7075 50  0001 C CNN
F 2 "" H 3175 7225 50  0001 C CNN
F 3 "~" H 3175 7225 50  0001 C CNN
	1    3175 7225
	1    0    0    -1  
$EndComp
Wire Bus Line
	500  2625 1725 2625
Wire Bus Line
	500  2625 500  3400
Wire Bus Line
	500  3400 1725 3400
Wire Bus Line
	1725 3400 1725 2625
Wire Bus Line
	1725 4525 500  4525
Wire Bus Line
	500  4525 500  3400
Connection ~ 1725 3400
Connection ~ 500  3400
Wire Bus Line
	500  4525 500  5375
Connection ~ 500  4525
Wire Bus Line
	500  5375 500  6200
Wire Bus Line
	2125 6200 2125 5375
Connection ~ 500  5375
Wire Bus Line
	500  6200 500  7725
Wire Bus Line
	500  7725 3700 7725
Wire Bus Line
	3700 7725 3700 6200
Wire Bus Line
	3700 6200 2125 6200
Connection ~ 500  6200
$Comp
L Connector_Generic:Conn_01x04 J2
U 1 1 61A2DCA1
P 975 2125
F 0 "J2" H 893 2442 50  0000 C CNN
F 1 "Conn_01x04" H 893 2351 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 975 2125 50  0001 C CNN
F 3 "~" H 975 2125 50  0001 C CNN
	1    975  2125
	-1   0    0    -1  
$EndComp
Text GLabel 1175 2025 2    50   Input ~ 0
ENC1
Text GLabel 1175 2125 2    50   Input ~ 0
ENC2
Text GLabel 1175 2225 2    50   Input ~ 0
ENC3
Text GLabel 1175 2325 2    50   Input ~ 0
ENC4
$Comp
L Driver_LED:PCA9685BS U1
U 1 1 618B37B9
P 5225 6500
F 0 "U1" H 5050 7425 50  0000 C CNN
F 1 "PCA9685BS" H 5525 7375 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-28-1EP_6x6mm_P0.65mm_EP4.25x4.25mm" H 5250 5525 50  0001 L CNN
F 3 "http://www.nxp.com/documents/data_sheet/PCA9685.pdf" H 4825 7200 50  0001 C CNN
	1    5225 6500
	1    0    0    -1  
$EndComp
Text GLabel 4425 5900 0    50   Input ~ 0
I2C_SDA
Text GLabel 4425 5800 0    50   Input ~ 0
I2C_SCL
$Comp
L power:+3.3V #PWR0137
U 1 1 61915401
P 5225 5500
F 0 "#PWR0137" H 5225 5350 50  0001 C CNN
F 1 "+3.3V" H 5225 5650 50  0000 C CNN
F 2 "" H 5225 5500 50  0001 C CNN
F 3 "" H 5225 5500 50  0001 C CNN
	1    5225 5500
	-1   0    0    -1  
$EndComp
$Comp
L power:Earth #PWR0138
U 1 1 619250DF
P 4400 6125
F 0 "#PWR0138" H 4400 5875 50  0001 C CNN
F 1 "Earth" H 4400 5975 50  0001 C CNN
F 2 "" H 4400 6125 50  0001 C CNN
F 3 "~" H 4400 6125 50  0001 C CNN
	1    4400 6125
	1    0    0    -1  
$EndComp
NoConn ~ 4525 6000
Wire Wire Line
	4525 6100 4400 6100
Wire Wire Line
	4400 6100 4400 6125
Wire Wire Line
	4525 5900 4425 5900
Wire Wire Line
	4525 5800 4425 5800
$Comp
L power:Earth #PWR0139
U 1 1 61995CDD
P 4475 7225
F 0 "#PWR0139" H 4475 6975 50  0001 C CNN
F 1 "Earth" H 4475 7075 50  0001 C CNN
F 2 "" H 4475 7225 50  0001 C CNN
F 3 "~" H 4475 7225 50  0001 C CNN
	1    4475 7225
	1    0    0    -1  
$EndComp
Wire Wire Line
	4475 7200 4475 7225
Wire Wire Line
	4475 7200 4525 7200
Wire Wire Line
	4525 7100 4475 7100
Wire Wire Line
	4475 7100 4475 7200
Connection ~ 4475 7200
Wire Wire Line
	4525 7000 4475 7000
Wire Wire Line
	4475 7000 4475 7100
Connection ~ 4475 7100
Wire Wire Line
	4525 6900 4475 6900
Wire Wire Line
	4475 6900 4475 7000
Connection ~ 4475 7000
Wire Wire Line
	4525 6800 4475 6800
Wire Wire Line
	4475 6800 4475 6900
Connection ~ 4475 6900
Wire Wire Line
	4525 6700 4475 6700
Wire Wire Line
	4475 6700 4475 6800
Connection ~ 4475 6800
$Comp
L power:Earth #PWR0140
U 1 1 61A0B524
P 5175 7625
F 0 "#PWR0140" H 5175 7375 50  0001 C CNN
F 1 "Earth" H 5175 7475 50  0001 C CNN
F 2 "" H 5175 7625 50  0001 C CNN
F 3 "~" H 5175 7625 50  0001 C CNN
	1    5175 7625
	1    0    0    -1  
$EndComp
Wire Wire Line
	5225 7600 5175 7600
Wire Wire Line
	5175 7600 5175 7625
Wire Wire Line
	5175 7600 5125 7600
Connection ~ 5175 7600
Wire Bus Line
	2625 2625 5575 2625
Wire Bus Line
	5575 2625 7775 2625
Connection ~ 5575 2625
Wire Bus Line
	5575 500  2625 500 
Wire Bus Line
	5575 500  7775 500 
Connection ~ 5575 500 
Wire Bus Line
	5575 500  5575 2625
$Comp
L Connector_Generic:Conn_02x16_Odd_Even J7
U 1 1 61AE367D
P 6275 6600
F 0 "J7" H 6325 7425 50  0000 C CNN
F 1 "Conn_02x16_Odd_Even" H 6325 7426 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x16_P2.54mm_Vertical" H 6275 6600 50  0001 C CNN
F 3 "~" H 6275 6600 50  0001 C CNN
	1    6275 6600
	1    0    0    1   
$EndComp
Wire Wire Line
	6075 5800 5925 5800
Wire Wire Line
	5925 5900 6075 5900
Wire Wire Line
	6075 6000 5925 6000
Wire Wire Line
	5925 6100 6075 6100
Wire Wire Line
	5925 6200 6075 6200
Wire Wire Line
	6075 6300 5925 6300
Wire Wire Line
	6075 6400 5925 6400
Wire Wire Line
	5925 6500 6075 6500
Wire Wire Line
	6075 6600 5925 6600
Wire Wire Line
	5925 6700 6075 6700
Wire Wire Line
	5925 6800 6075 6800
Wire Wire Line
	6075 6900 5925 6900
Wire Wire Line
	6075 7000 5925 7000
Wire Wire Line
	5925 7100 6075 7100
Wire Wire Line
	6075 7200 5925 7200
Wire Wire Line
	5925 7300 6075 7300
$Comp
L power:Earth #PWR0141
U 1 1 61B65F55
P 6650 7325
F 0 "#PWR0141" H 6650 7075 50  0001 C CNN
F 1 "Earth" H 6650 7175 50  0001 C CNN
F 2 "" H 6650 7325 50  0001 C CNN
F 3 "~" H 6650 7325 50  0001 C CNN
	1    6650 7325
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6650 7325 6650 7300
Wire Wire Line
	6650 7300 6575 7300
Wire Wire Line
	6575 7200 6650 7200
Wire Wire Line
	6650 7200 6650 7300
Connection ~ 6650 7300
Wire Wire Line
	6575 7100 6650 7100
Wire Wire Line
	6650 7100 6650 7200
Connection ~ 6650 7200
Wire Wire Line
	6575 7000 6650 7000
Wire Wire Line
	6650 7000 6650 7100
Connection ~ 6650 7100
Wire Wire Line
	6575 6900 6650 6900
Wire Wire Line
	6650 6900 6650 7000
Connection ~ 6650 7000
Wire Wire Line
	6575 6800 6650 6800
Wire Wire Line
	6650 6800 6650 6900
Connection ~ 6650 6900
Wire Wire Line
	6575 6700 6650 6700
Connection ~ 6650 6800
Wire Wire Line
	6575 6600 6650 6600
Wire Wire Line
	6650 6600 6650 6700
Connection ~ 6650 6700
Wire Wire Line
	6650 6700 6650 6800
Wire Wire Line
	6650 6600 6650 6500
Wire Wire Line
	6650 6500 6575 6500
Connection ~ 6650 6600
Wire Wire Line
	6650 6500 6650 6400
Wire Wire Line
	6650 6400 6575 6400
Connection ~ 6650 6500
Wire Wire Line
	6575 6300 6650 6300
Wire Wire Line
	6650 6300 6650 6400
Connection ~ 6650 6400
Wire Wire Line
	6575 6200 6650 6200
Wire Wire Line
	6650 6200 6650 6300
Connection ~ 6650 6300
Wire Wire Line
	6575 6100 6650 6100
Wire Wire Line
	6650 6100 6650 6200
Connection ~ 6650 6200
Wire Wire Line
	6575 6000 6650 6000
Wire Wire Line
	6650 6000 6650 6100
Connection ~ 6650 6100
Wire Wire Line
	6575 5900 6650 5900
Wire Wire Line
	6650 5900 6650 6000
Connection ~ 6650 6000
Wire Wire Line
	6575 5800 6650 5800
Wire Wire Line
	6650 5800 6650 5900
Connection ~ 6650 5900
Text Notes 5500 7600 0    50   ~ 0
address 0x40 ( 0b1000000)
Text Notes 1525 7525 0    50   ~ 0
address 0x1e (0b0011110)
Wire Wire Line
	1125 6625 1075 6625
Wire Wire Line
	1125 6925 1075 6925
$Comp
L power:+3.3V #PWR0142
U 1 1 61C6A71C
P 3175 6825
F 0 "#PWR0142" H 3175 6675 50  0001 C CNN
F 1 "+3.3V" H 3175 6975 50  0000 C CNN
F 2 "" H 3175 6825 50  0001 C CNN
F 3 "" H 3175 6825 50  0001 C CNN
	1    3175 6825
	-1   0    0    -1  
$EndComp
Text GLabel 900  5675 0    50   Input ~ 0
SPI_MOSI
Connection ~ 2125 6200
Wire Bus Line
	500  6200 2125 6200
Text GLabel 900  5775 0    50   Input ~ 0
SPI_MISO
Text GLabel 900  5875 0    50   Input ~ 0
SPI_SCK
Text GLabel 900  5975 0    50   Input ~ 0
SPI_CS
Text GLabel 1450 5675 2    50   Input ~ 0
SPI_MOSI
Text GLabel 1450 5775 2    50   Input ~ 0
SPI_MISO
Text GLabel 1450 5875 2    50   Input ~ 0
SPI_SCK
Wire Wire Line
	925  5675 900  5675
Wire Wire Line
	925  5775 900  5775
Wire Wire Line
	925  5875 900  5875
Wire Wire Line
	925  5975 900  5975
Wire Wire Line
	1450 5975 1425 5975
Wire Wire Line
	1450 5875 1425 5875
Wire Wire Line
	1450 5775 1425 5775
Wire Wire Line
	1450 5675 1425 5675
Text Notes 4050 2425 0    50   ~ 0
ACCEL ADDRESS 0X19 ( 0b0011110 )\nGYRO  ADDRESS 0X69 ( 0b0001111 )
Text Notes 8450 700  0    87   ~ 0
RASBPERRY PI
Text Notes 6675 2325 0    50   ~ 0
ADDRESS 0X76 (0b0011110)
$Comp
L Connector_Generic:Conn_01x09 J4
U 1 1 61DB7711
P 1000 1275
F 0 "J4" H 918 1892 50  0000 C CNN
F 1 "Conn_01x09" H 918 1801 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x09_P2.54mm_Vertical" H 1000 1275 50  0001 C CNN
F 3 "~" H 1000 1275 50  0001 C CNN
	1    1000 1275
	-1   0    0    -1  
$EndComp
NoConn ~ 1200 875 
$Comp
L power:+3.3V #PWR0144
U 1 1 61DDF0C3
P 1450 925
F 0 "#PWR0144" H 1450 775 50  0001 C CNN
F 1 "+3.3V" H 1465 1098 50  0000 C CNN
F 2 "" H 1450 925 50  0001 C CNN
F 3 "" H 1450 925 50  0001 C CNN
	1    1450 925 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 975  1450 975 
Wire Wire Line
	1450 975  1450 925 
$Comp
L power:Earth #PWR0145
U 1 1 61DFD404
P 1450 1075
F 0 "#PWR0145" H 1450 825 50  0001 C CNN
F 1 "Earth" H 1450 925 50  0001 C CNN
F 2 "" H 1450 1075 50  0001 C CNN
F 3 "~" H 1450 1075 50  0001 C CNN
	1    1450 1075
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1450 1075 1200 1075
Text GLabel 1450 1275 2    50   Input ~ 0
I2C_SDA
Text GLabel 1450 1175 2    50   Input ~ 0
I2C_SCL
Wire Wire Line
	1450 1275 1200 1275
NoConn ~ 1200 1375
NoConn ~ 1200 1475
NoConn ~ 1200 1575
NoConn ~ 1200 1675
Text Notes 1600 850  0    50   ~ 0
LSM9DS1 CONNECTOR
Text Notes 575  3375 0    50   ~ 0
GPS CONNECTOR
Wire Wire Line
	1075 3225 1350 3225
Text Notes 725  4475 0    50   ~ 0
PRECISE MOTOR CONTROL
Text Notes 650  5325 0    50   ~ 0
EXTRA I2C CONNECTORS
Wire Bus Line
	500  5375 2125 5375
Connection ~ 2125 5375
Wire Bus Line
	1725 3400 1725 4525
Wire Bus Line
	2125 4525 1725 4525
Wire Bus Line
	2125 4525 2125 5375
Connection ~ 1725 4525
Wire Wire Line
	1075 4650 1375 4650
Wire Wire Line
	1750 4775 1600 4775
Wire Wire Line
	1250 4775 1250 5150
$Comp
L Device:R R1
U 1 1 61F836BF
P 1375 4800
F 0 "R1" H 1445 4846 50  0000 L CNN
F 1 "4k7" H 1400 4675 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1305 4800 50  0001 C CNN
F 3 "~" H 1375 4800 50  0001 C CNN
	1    1375 4800
	1    0    0    -1  
$EndComp
Connection ~ 1375 4650
Wire Wire Line
	1375 4650 1750 4650
$Comp
L Device:R R2
U 1 1 61F8414C
P 1600 4925
F 0 "R2" H 1670 4971 50  0000 L CNN
F 1 "4k7" H 1670 4880 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1530 4925 50  0001 C CNN
F 3 "~" H 1600 4925 50  0001 C CNN
	1    1600 4925
	1    0    0    -1  
$EndComp
Connection ~ 1600 4775
Wire Wire Line
	1600 4775 1250 4775
Wire Wire Line
	1375 4950 1375 5125
Wire Wire Line
	1375 5125 1600 5125
Wire Wire Line
	1600 5125 1600 5075
$Comp
L power:Earth #PWR0147
U 1 1 61FFB7CF
P 650 4300
F 0 "#PWR0147" H 650 4050 50  0001 C CNN
F 1 "Earth" H 650 4150 50  0001 C CNN
F 2 "" H 650 4300 50  0001 C CNN
F 3 "~" H 650 4300 50  0001 C CNN
	1    650  4300
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0143
U 1 1 61725B73
P 6775 3450
F 0 "#PWR0143" H 6775 3300 50  0001 C CNN
F 1 "+3.3V" H 6790 3623 50  0000 C CNN
F 2 "" H 6775 3450 50  0001 C CNN
F 3 "" H 6775 3450 50  0001 C CNN
	1    6775 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5575 4850 5475 4850
Wire Wire Line
	6575 3850 6475 3850
Wire Wire Line
	6575 3750 6475 3750
Wire Wire Line
	6575 3650 6475 3650
Wire Wire Line
	6575 3550 6475 3550
Wire Wire Line
	6575 4250 6475 4250
Wire Wire Line
	6575 4150 6475 4150
Wire Wire Line
	6575 4050 6475 4050
Wire Wire Line
	6575 3950 6475 3950
Wire Wire Line
	6575 4650 6475 4650
Wire Wire Line
	6575 4550 6475 4550
Wire Wire Line
	6575 4450 6475 4450
Wire Wire Line
	6575 4350 6475 4350
Wire Wire Line
	6575 5050 6475 5050
Wire Wire Line
	6575 4950 6475 4950
Wire Wire Line
	6575 4850 6475 4850
Wire Wire Line
	5575 4750 5475 4750
Wire Wire Line
	5575 4650 5475 4650
Wire Wire Line
	5575 4550 5475 4550
Wire Wire Line
	5575 4450 5475 4450
Wire Wire Line
	5575 4350 5475 4350
Wire Wire Line
	5575 4250 5475 4250
Wire Wire Line
	5575 4150 5475 4150
Wire Wire Line
	5575 4050 5475 4050
Wire Wire Line
	5575 3950 5475 3950
Wire Wire Line
	5575 3850 5475 3850
Wire Wire Line
	5575 3750 5475 3750
Wire Wire Line
	5575 3650 5475 3650
Wire Wire Line
	5575 3550 5475 3550
Wire Wire Line
	5575 3450 5475 3450
Wire Wire Line
	5575 3350 5475 3350
Wire Wire Line
	5575 3250 5475 3250
Text GLabel 6575 5050 2    50   Input ~ 0
PC13
Text GLabel 6575 4950 2    50   Input ~ 0
PC14
Text GLabel 6575 4850 2    50   Input ~ 0
PC15
Text GLabel 6575 4650 2    50   Input ~ 0
PA0
Text GLabel 6575 4550 2    50   Input ~ 0
PA1
Text GLabel 6575 4450 2    50   Input ~ 0
PA2
Text GLabel 6575 4350 2    50   Input ~ 0
PA3
Text GLabel 6575 4250 2    50   Input ~ 0
PA4
Text GLabel 6575 4150 2    50   Input ~ 0
PA5
Text GLabel 6575 4050 2    50   Input ~ 0
PA6
Text GLabel 6575 3950 2    50   Input ~ 0
PA7
Text GLabel 6575 3850 2    50   Input ~ 0
PB0
Text GLabel 6575 3750 2    50   Input ~ 0
PB1
Text GLabel 6575 3650 2    50   Input ~ 0
PB2
Text GLabel 6575 3550 2    50   Input ~ 0
PB10
Text GLabel 5475 4850 0    50   Input ~ 0
PB9
Text GLabel 5475 4750 0    50   Input ~ 0
PB8
Text GLabel 5475 4650 0    50   Input ~ 0
PB7
Text GLabel 5475 4550 0    50   Input ~ 0
PB6
Text GLabel 5475 4450 0    50   Input ~ 0
PB5
Text GLabel 5475 4350 0    50   Input ~ 0
PB4
Text GLabel 5475 4250 0    50   Input ~ 0
PB3
Text GLabel 5475 4150 0    50   Input ~ 0
PA15
Text GLabel 5475 4050 0    50   Input ~ 0
PA12
Text GLabel 5475 3950 0    50   Input ~ 0
PA11
Text GLabel 5475 3850 0    50   Input ~ 0
PA10
Text GLabel 5475 3750 0    50   Input ~ 0
PA9
Text GLabel 5475 3650 0    50   Input ~ 0
PA8
Text GLabel 5475 3550 0    50   Input ~ 0
PB15
Text GLabel 5475 3450 0    50   Input ~ 0
PB14
Text GLabel 5475 3350 0    50   Input ~ 0
PB13
Text GLabel 5475 3250 0    50   Input ~ 0
PB12
NoConn ~ 6475 5150
NoConn ~ 6475 4750
$Comp
L power:+3.3V #PWR0136
U 1 1 6175A59F
P 5575 5150
F 0 "#PWR0136" H 5575 5000 50  0001 C CNN
F 1 "+3.3V" V 5575 5375 50  0000 C CNN
F 2 "" H 5575 5150 50  0001 C CNN
F 3 "" H 5575 5150 50  0001 C CNN
	1    5575 5150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5450 4950 5575 4950
$Comp
L power:+5V #PWR0135
U 1 1 61748BE1
P 5450 4950
F 0 "#PWR0135" H 5450 4800 50  0001 C CNN
F 1 "+5V" V 5425 5150 50  0000 C CNN
F 2 "" H 5450 4950 50  0001 C CNN
F 3 "" H 5450 4950 50  0001 C CNN
	1    5450 4950
	0    -1   1    0   
$EndComp
Wire Wire Line
	5450 5050 5575 5050
$Comp
L power:Earth #PWR0134
U 1 1 6173B51E
P 5450 5050
F 0 "#PWR0134" H 5450 4800 50  0001 C CNN
F 1 "Earth" H 5450 4900 50  0001 C CNN
F 2 "" H 5450 5050 50  0001 C CNN
F 3 "~" H 5450 5050 50  0001 C CNN
	1    5450 5050
	0    1    1    0   
$EndComp
Wire Wire Line
	6475 3450 6775 3450
Wire Wire Line
	6600 3350 6475 3350
$Comp
L power:Earth #PWR0133
U 1 1 61702B66
P 6600 3350
F 0 "#PWR0133" H 6600 3100 50  0001 C CNN
F 1 "Earth" H 6600 3200 50  0001 C CNN
F 2 "" H 6600 3350 50  0001 C CNN
F 3 "~" H 6600 3350 50  0001 C CNN
	1    6600 3350
	0    -1   1    0   
$EndComp
Wire Wire Line
	6600 3250 6475 3250
Wire Wire Line
	6600 3175 6600 3250
$Comp
L power:+5V #PWR0132
U 1 1 616EC174
P 6600 3175
F 0 "#PWR0132" H 6600 3025 50  0001 C CNN
F 1 "+5V" H 6615 3348 50  0000 C CNN
F 2 "" H 6600 3175 50  0001 C CNN
F 3 "" H 6600 3175 50  0001 C CNN
	1    6600 3175
	1    0    0    -1  
$EndComp
$Comp
L stm32f411-black-pill:stm32f411-black-pill U?1
U 1 1 616E7D62
P 6025 3200
F 0 "U?1" H 6025 3375 50  0000 C CNN
F 1 "stm32f411-black-pill" H 6025 3284 50  0000 C CNN
F 2 "stm32-black-pill:stm32" H 5575 3150 50  0001 C CNN
F 3 "" H 5575 3150 50  0001 C CNN
	1    6025 3200
	1    0    0    -1  
$EndComp
Text GLabel 4025 3375 0    50   Input ~ 0
PB9
Text GLabel 2975 4875 0    50   Input ~ 0
PB8
Text GLabel 2975 4775 0    50   Input ~ 0
PB7
Text GLabel 2975 4675 0    50   Input ~ 0
PB6
Text GLabel 2975 4575 0    50   Input ~ 0
PB5
Text GLabel 2975 4475 0    50   Input ~ 0
PB4
Text GLabel 2975 4375 0    50   Input ~ 0
PB3
Text GLabel 2975 4275 0    50   Input ~ 0
PA15
Text GLabel 2975 4175 0    50   Input ~ 0
PA12
Text GLabel 2975 4075 0    50   Input ~ 0
PA11
Text GLabel 2975 3975 0    50   Input ~ 0
PA10
Text GLabel 2975 3875 0    50   Input ~ 0
PA9
Text GLabel 2975 3775 0    50   Input ~ 0
PA8
Text GLabel 2975 3675 0    50   Input ~ 0
PB15
Text GLabel 2975 3575 0    50   Input ~ 0
PB14
Text GLabel 2975 3475 0    50   Input ~ 0
PB13
Text GLabel 2975 3375 0    50   Input ~ 0
PB12
Text GLabel 4025 4575 0    50   Input ~ 0
PA0
Text GLabel 4025 4475 0    50   Input ~ 0
PA1
Text GLabel 4025 4375 0    50   Input ~ 0
PA2
Text GLabel 4025 4275 0    50   Input ~ 0
PA3
Text GLabel 4025 4175 0    50   Input ~ 0
PA4
Text GLabel 4025 4075 0    50   Input ~ 0
PA5
Text GLabel 4025 3975 0    50   Input ~ 0
PA6
Text GLabel 4025 3875 0    50   Input ~ 0
PA7
Text GLabel 4025 3775 0    50   Input ~ 0
PB0
Text GLabel 4025 3675 0    50   Input ~ 0
PB1
Text GLabel 4025 3575 0    50   Input ~ 0
PB2
Text GLabel 4025 3475 0    50   Input ~ 0
PB10
Text GLabel 4025 4875 0    50   Input ~ 0
PC13
Text GLabel 4025 4775 0    50   Input ~ 0
PC14
Text GLabel 4025 4675 0    50   Input ~ 0
PC15
NoConn ~ 4125 4675
NoConn ~ 4125 4875
NoConn ~ 4125 4775
Text GLabel 4125 4575 2    50   Input ~ 0
PWM5
Text GLabel 4125 4475 2    50   Input ~ 0
PWM6
Text GLabel 4125 4375 2    50   Input ~ 0
PWM7
Text GLabel 4125 4275 2    50   Input ~ 0
PWM8
Text GLabel 4125 4175 2    50   Input ~ 0
PRES_INT
NoConn ~ 4125 4075
Text GLabel 4125 3975 2    50   Input ~ 0
ENC3
Text GLabel 4125 3875 2    50   Input ~ 0
ENC4
Text GLabel 4125 3775 2    50   Input ~ 0
PWM1
Text GLabel 4125 3675 2    50   Input ~ 0
PWM2
Text GLabel 4125 3575 2    50   Input ~ 0
LED2
Text GLabel 4125 3475 2    50   Input ~ 0
I2C_SCL
Text GLabel 4125 3375 2    50   Input ~ 0
PWM4
Text GLabel 3075 3375 2    50   Input ~ 0
LED3
Text GLabel 3075 3475 2    50   Input ~ 0
SPI_SCK
Text GLabel 3075 3575 2    50   Input ~ 0
SPI_MISO
Text GLabel 3075 3675 2    50   Input ~ 0
SPI_MOSI
Text GLabel 3075 3775 2    50   Input ~ 0
SPI_CS
Text GLabel 3075 3875 2    50   Input ~ 0
RPI_TX
Text GLabel 3075 3975 2    50   Input ~ 0
RPI_RX
Text GLabel 3075 4075 2    50   Input ~ 0
UART_TX
Text GLabel 3075 4175 2    50   Input ~ 0
UART_RX
Text GLabel 3075 4275 2    50   Input ~ 0
ACCEL_INT
Text GLabel 3075 4375 2    50   Input ~ 0
I2C_SDA
Text GLabel 3075 4475 2    50   Input ~ 0
GYRO_INT
Text GLabel 3075 4575 2    50   Input ~ 0
MAG_INT
Text GLabel 3075 4675 2    50   Input ~ 0
ENC1
Text GLabel 3075 4775 2    50   Input ~ 0
ENC2
Text GLabel 3075 4875 2    50   Input ~ 0
PWM3
Wire Wire Line
	3075 4875 2975 4875
Wire Wire Line
	2975 4775 3075 4775
Wire Wire Line
	3075 4675 2975 4675
Wire Wire Line
	3075 4575 2975 4575
Wire Wire Line
	3075 4475 2975 4475
Wire Wire Line
	2975 4375 3075 4375
Wire Wire Line
	3075 4275 2975 4275
Wire Wire Line
	3075 4175 2975 4175
Wire Wire Line
	3075 4075 2975 4075
Wire Wire Line
	2975 3975 3075 3975
Wire Wire Line
	3075 3875 2975 3875
Wire Wire Line
	3075 3775 2975 3775
Wire Wire Line
	3075 3675 2975 3675
Wire Wire Line
	2975 3575 3075 3575
Wire Wire Line
	3075 3475 2975 3475
Wire Wire Line
	3075 3375 2975 3375
Wire Wire Line
	4125 4875 4025 4875
Wire Wire Line
	4025 4775 4125 4775
Wire Wire Line
	4125 4675 4025 4675
Wire Wire Line
	4125 4575 4025 4575
Wire Wire Line
	4125 4475 4025 4475
Wire Wire Line
	4025 4375 4125 4375
Wire Wire Line
	4125 4275 4025 4275
Wire Wire Line
	4125 4175 4025 4175
Wire Wire Line
	4125 4075 4025 4075
Wire Wire Line
	4025 3975 4125 3975
Wire Wire Line
	4125 3875 4025 3875
Wire Wire Line
	4125 3775 4025 3775
Wire Wire Line
	4125 3675 4025 3675
Wire Wire Line
	4025 3575 4125 3575
Wire Wire Line
	4125 3475 4025 3475
Wire Wire Line
	4125 3375 4025 3375
Text GLabel 4925 2900 0    50   Input ~ 0
RPI_TX
Text GLabel 4925 3000 0    50   Input ~ 0
RPI_RX
Text GLabel 5050 3000 2    50   Input ~ 0
PI_TX
Text GLabel 5050 2900 2    50   Input ~ 0
PI_RX
Wire Wire Line
	5050 2900 4925 2900
Wire Wire Line
	5050 3000 4925 3000
$Comp
L Device:R R3
U 1 1 62379830
P 8575 3875
F 0 "R3" H 8645 3921 50  0000 L CNN
F 1 "2k2" H 8645 3830 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8505 3875 50  0001 C CNN
F 3 "~" H 8575 3875 50  0001 C CNN
	1    8575 3875
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 6237A42D
P 8575 4175
F 0 "D1" V 8614 4058 50  0000 R CNN
F 1 "LED" V 8523 4058 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric_Castellated" H 8575 4175 50  0001 C CNN
F 3 "~" H 8575 4175 50  0001 C CNN
	1    8575 4175
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R4
U 1 1 6237E81B
P 8925 3875
F 0 "R4" H 8995 3921 50  0000 L CNN
F 1 "2k2" H 8995 3830 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8855 3875 50  0001 C CNN
F 3 "~" H 8925 3875 50  0001 C CNN
	1    8925 3875
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 6237E821
P 8925 4175
F 0 "D2" V 8964 4058 50  0000 R CNN
F 1 "LED" V 8873 4058 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8925 4175 50  0001 C CNN
F 3 "~" H 8925 4175 50  0001 C CNN
	1    8925 4175
	0    -1   -1   0   
$EndComp
Text GLabel 8575 3725 1    50   Input ~ 0
LED3
Text GLabel 8925 3725 1    50   Input ~ 0
LED2
Wire Wire Line
	8925 4325 8750 4325
$Comp
L power:Earth #PWR01
U 1 1 62428D29
P 8750 4325
F 0 "#PWR01" H 8750 4075 50  0001 C CNN
F 1 "Earth" H 8750 4175 50  0001 C CNN
F 2 "" H 8750 4325 50  0001 C CNN
F 3 "~" H 8750 4325 50  0001 C CNN
	1    8750 4325
	1    0    0    -1  
$EndComp
Connection ~ 8750 4325
Wire Wire Line
	8750 4325 8575 4325
NoConn ~ 1450 5975
Wire Wire Line
	1450 1175 1200 1175
Text GLabel 4025 4975 0    50   Input ~ 0
PB5
Wire Wire Line
	4025 4975 4100 4975
NoConn ~ 4100 4975
Connection ~ 725  7375
$Comp
L power:+3.3V #PWR02
U 1 1 6255E630
P 4475 5200
F 0 "#PWR02" H 4475 5050 50  0001 C CNN
F 1 "+3.3V" H 4475 5350 50  0000 C CNN
F 2 "" H 4475 5200 50  0001 C CNN
F 3 "" H 4475 5200 50  0001 C CNN
	1    4475 5200
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 6257882D
P 4475 5350
F 0 "C9" H 4575 5275 50  0000 R CNN
F 1 "100n" H 4675 5425 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4513 5200 50  0001 C CNN
F 3 "~" H 4475 5350 50  0001 C CNN
	1    4475 5350
	-1   0    0    1   
$EndComp
$Comp
L power:Earth #PWR03
U 1 1 62591AFE
P 4475 5500
F 0 "#PWR03" H 4475 5250 50  0001 C CNN
F 1 "Earth" H 4475 5350 50  0001 C CNN
F 2 "" H 4475 5500 50  0001 C CNN
F 3 "~" H 4475 5500 50  0001 C CNN
	1    4475 5500
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J3
U 1 1 625B956B
P 975 4850
F 0 "J3" V 1025 5030 50  0000 L CNN
F 1 "Conn_02x04_Odd_Even" V 1070 5030 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 975 4850 50  0001 C CNN
F 3 "~" H 975 4850 50  0001 C CNN
	1    975  4850
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J6
U 1 1 625BF865
P 1125 5775
F 0 "J6" H 1175 6000 50  0000 C CNN
F 1 "Conn_02x04_Odd_Even" V 1220 5955 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 1125 5775 50  0001 C CNN
F 3 "~" H 1125 5775 50  0001 C CNN
	1    1125 5775
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0148
U 1 1 625E5BDF
P 10775 1700
F 0 "#PWR0148" H 10775 1550 50  0001 C CNN
F 1 "+5V" H 10790 1873 50  0000 C CNN
F 2 "" H 10775 1700 50  0001 C CNN
F 3 "" H 10775 1700 50  0001 C CNN
	1    10775 1700
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR0149
U 1 1 625FF64E
P 10775 1875
F 0 "#PWR0149" H 10775 1625 50  0001 C CNN
F 1 "Earth" H 10775 1725 50  0001 C CNN
F 2 "" H 10775 1875 50  0001 C CNN
F 3 "~" H 10775 1875 50  0001 C CNN
	1    10775 1875
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J9
U 1 1 6262EE81
P 10350 1750
F 0 "J9" H 10268 1875 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 10268 1876 50  0001 C CNN
F 2 "TerminalBlock_RND:TerminalBlock_RND_205-00287_1x02_P5.08mm_Horizontal" H 10350 1750 50  0001 C CNN
F 3 "~" H 10350 1750 50  0001 C CNN
	1    10350 1750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10775 1700 10775 1750
Wire Wire Line
	10775 1750 10550 1750
Wire Wire Line
	10775 1875 10775 1850
Wire Wire Line
	10775 1850 10550 1850
Connection ~ 7425 1525
Wire Wire Line
	7425 1525 7225 1525
$Comp
L Device:C C8
U 1 1 6188CB62
P 7425 1675
F 0 "C8" H 7310 1629 50  0000 R CNN
F 1 "100n" H 7310 1720 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7463 1525 50  0001 C CNN
F 3 "~" H 7425 1675 50  0001 C CNN
	1    7425 1675
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR0146
U 1 1 626BF022
P 1600 5125
F 0 "#PWR0146" H 1600 4975 50  0001 C CNN
F 1 "+3.3V" H 1475 5175 50  0000 C CNN
F 2 "" H 1600 5125 50  0001 C CNN
F 3 "" H 1600 5125 50  0001 C CNN
	1    1600 5125
	-1   0    0    1   
$EndComp
$EndSCHEMATC
