import serial
PORT = "/dev/ttyUSB0"



import serial
import time
arduino = serial.Serial(port='/dev/ttyUSB0', baudrate=115200, timeout=.1)
def write_read(x):
    return data

while True:
    data = arduino.readline()
    try:
        data = [float(val) for val in data.decode().strip().split(" ")]
        r, i, j, k = data
        print(r, i, j, k)
    except ValueError:
        pass

