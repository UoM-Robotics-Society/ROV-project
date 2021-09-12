from flask import Flask, render_template
from flask_socketio import SocketIO, send, emit
import serial
import time
import multiprocessing
import time
from multiprocessing import  Value


def BNO_process(r, i, j, k):
    import serial
    device = serial.Serial(port='/dev/ttyUSB0', baudrate=115200, timeout=.1)
#    print("Starting serial process")
    while True:
        data = device.readline()
        try:
            data = [float(val) for val in data.decode().strip().split(" ")]
            r.value, i.value, j.value, k.value = data
            #print(r.value, i.value, j.value, k.value)
        except ValueError:
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
    global r, i, j, k
    data = {"r": r.value, "i": i.value, "j": j.value, "k": k.value}
    print("DEBUG : ", data)
    emit("data", data)

if __name__ == '__main__':
    global r, i, j, k
    r, i, j, k = Value("d", 0.0), Value("d", 0.0), Value("d", 0.0), Value("d", 0.0)

    daemonProcess = multiprocessing.Process(target=BNO_process, args=(r, i, j, k))
    daemonProcess.daemon = True
    daemonProcess.start()

    socketio.run(app)
