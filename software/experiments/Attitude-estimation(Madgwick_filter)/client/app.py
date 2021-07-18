from flask import Flask, render_template
from flask_socketio import SocketIO, send, emit

app = Flask(__name__)
app.config["SECRET_KEY"] = 'secret!'
socketio = SocketIO(app)


@app.route('/')
def hello_world():
    return render_template("index.html")

@socketio.on("connect")
def handle_connect():
    print("message ")
    emit("data", {"dat" : 0})


if __name__ == '__main__':
    socketio.run(app)
