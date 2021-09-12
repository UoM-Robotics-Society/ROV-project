import multiprocessing
import time
from multiprocessing import  Value


def BNO_process(r, i, j, k):
    import serial
    device = serial.Serial(port='/dev/ttyUSB0', baudrate=115200, timeout=.1)
    while True:
        data = device.readline()
        try:
            data = [float(val) for val in data.decode().strip().split(" ")]
            r.value, i.value, j.value, k.value = data
            print(r.value, i.value, j.value, k.value)
        except ValueError:
            pass


if __name__ == "__main__":
    r, i, j, k = Value("d", 0.0), Value("d", 0.0), Value("d", 0.0), Value("d", 0.0)

    daemonProcess = multiprocessing.Process(target=BNO_process, args=(r, i, j, k))
    daemonProcess.daemon = True

    daemonProcess.start()


    while True:
        print(r.value, i.value, j.value, k.value)
        time.sleep(1)