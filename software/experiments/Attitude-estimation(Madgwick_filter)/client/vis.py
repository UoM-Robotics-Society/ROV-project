import itertools

import numpy as np
import matplotlib.pyplot as plt
import matplotlib.animation as animation
import serial
from filtering.madgwickahrs import MadgwickAHRS
import math

ser = serial.Serial("COM3", baudrate=115200)
ODR = 100
SENSITIVITY_ACCELEROMETER_2 = 0.000061
SENSITIVITY_GYROSCOPE_245 = 0.00875
SENSITIVITY_MAGNETOMETER_4 = 0.00014

gscale = SENSITIVITY_GYROSCOPE_245 * math.pi / 180
ascale = SENSITIVITY_ACCELEROMETER_2
mscale = SENSITIVITY_MAGNETOMETER_4
ahrs = MadgwickAHRS(sampleperiod=1 / ODR)


def data_gen():
    for cnt in itertools.count():
        dat = ser.readline()
        #dat = b"0 0 0 1 0 0 1 0 0"
        print(dat)
        t = cnt / 100
        gx, gy, gz, ax, ay, az, mx, my, mz = [int(v) for v in dat.decode().strip().split()]

        # raw measurement to physical values
        gx, gy, gz = gscale * gx, gscale * gy, gscale * gz
        ax, ay, az = ascale * ax, ascale * ay, ascale * az
        mx, my, mz = mscale * mx, mscale * my, mscale * mz

        ahrs.update(gyroscope=[gx, gy, gz], accelerometer=[ax, ay, az], magnetometer=[mx, my, mz])
        roll, pitch, yaw = ahrs.quaternion.to_euler_angles()

        yield t, roll, pitch, yaw


def init():
    ax.set_ylim(-2*math.pi, 2*math.pi)
    ax.set_xlim(0, 10)
    del xdata[:]
    del rdata[:]
    del pdata[:]
    del ydata[:]
    rline.set_data(xdata, rdata)
    pline.set_data(xdata, pdata)
    yline.set_data(xdata, ydata)
    return rline, pline, yline


fig, ax = plt.subplots()
rline, = ax.plot([], [], color="blue",label="roll", lw=2)
pline, = ax.plot([], [], color='red', label="pitch", lw=2)
yline, = ax.plot([], [], color='green', label='yaw', lw=2)

ax.grid()
xdata, rdata, pdata, ydata = [], [], [], []


def run(data):
    # update the data
    t, roll, pitch, yaw = data
    xdata.append(t)
    rdata.append(roll)
    pdata.append(pitch)
    ydata.append(yaw)

    xmin, xmax = ax.get_xlim()

    if t >= xmax:
        ax.set_xlim(xmin, 2 * xmax)
        ax.figure.canvas.draw()

    rline.set_data(xdata, rdata)
    pline.set_data(xdata, pdata)
    yline.set_data(xdata, ydata)

    return rline, pdata, yline


ani = animation.FuncAnimation(fig, run, data_gen, interval=10, init_func=init)
plt.show()
