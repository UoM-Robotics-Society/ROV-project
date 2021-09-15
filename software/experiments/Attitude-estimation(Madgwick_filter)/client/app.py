from flask import Flask, render_template
from flask_socketio import SocketIO, send, emit
import serial
import time
import multiprocessing
import time
from multiprocessing import  Value
from filtering.madgwick import madgwickFilter


def BNO_process(r, i, j, k, rp, ip, jp, kp):
    import serial

    filter = madgwickFilter()
    device = serial.Serial(port='/dev/ttyUSB0', baudrate=115200, timeout=.1)
    while True:
        data = device.readline()
        # print(data)
        try:
            data = data.decode().strip().split(" ")
            type = data[0]
            measurements = [float(val) for val in data[1:]]
            # print (type, measurements)
            if type == "B":
                r.value, i.value, j.value, k.value = measurements
            elif type == "L":
                # ax [m / s^2], ay [m / s^2], az [m / s^2], mx [gauss], my [gauss], mz [gauss], gx [rad/s], gy [rad/s], gz [rad/s]
                ax, ay, az, mx, my, mz, gx, gy, gz = measurements
                filter.filterUpdate(gx, gy, gz, ax, ay, az, mx, my, mz)
                rp.value, ip.value, jp.value, kp.value = filter.SEq_1, filter.SEq_2, filter.SEq_3, filter.SEq_4
                #print(ax, ay, az, mx, my, mz, gx, gy, gz)
            
            #print(r.value, i.value, j.value, k.value)
        except ValueError:
            pass
        except TypeError:
            pass


app = Flask(__name__)
app.config["SECRET_KEY"] = 'secret!'
socketio = SocketIO(app)

@app.route('/')
def hello_world():
    return render_template("index.html")

@socketio.on('message')
def handle_message(data):
    print('received message: ' + data)

@socketio.on("data")
def handle_data():
    global r, i, j, k, rp, ip, jp, kp
    data = {"r": r.value, "i": i.value, "j": j.value, "k": k.value, "rp" : rp.value, "ip" : ip.value, "jp" : jp.value, "kp" : kp.value}
    #print("DEBUG : ", data)
    emit("data", data)

if __name__ == '__main__':
    global r, i, j, k, rp, ip, jp, kp
    r, i, j, k = Value("d", 0.0), Value("d", 0.0), Value("d", 0.0), Value("d", 0.0)
    rp, ip, jp, kp = Value("d", 0.0), Value("d", 0.0), Value("d", 0.0), Value("d", 0.0)

    daemonProcess = multiprocessing.Process(target=BNO_process, args=(r, i, j, k, rp, ip, jp, kp))
    daemonProcess.daemon = True
    daemonProcess.start()

    socketio.run(app)
