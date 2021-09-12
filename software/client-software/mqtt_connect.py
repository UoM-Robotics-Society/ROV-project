import paho.mqtt.client as mqtt
import cv2
import numpy as np
import sys
from PyQt5.QtWidgets import QApplication, QMainWindow, QWidget, QHBoxLayout, QMenuBar, QStatusBar
from PyQt5.QtCore import QRect, QMetaObject,QRectF
from PyQt5.QtGui import QPainter, QPen, QColor, QFont
from PyQt5.Qt import Qt


# The callback for when the client receives a CONNACK response from the server.
def on_connect(client, userdata, flags, rc):
    print("Connected with result code "+str(rc))

    # Subscribing in on_connect() means that if we lose the connection and
    # reconnect then subscriptions will be renewed.
    client.subscribe("device/feed")


b = True
# The callback for when a PUBLISH message is received from the server.
def on_message(client, userdata, msg):
    global b
    if msg.topic == "device/feed" and b:
        jpg_image = msg.payload
        image_np_array = np.frombuffer(jpg_image, np.uint8)
        
        img = cv2.imdecode(image_np_array, cv2.IMREAD_COLOR)

#        b = False
 
client = mqtt.Client()
client.on_connect = on_connect
client.on_message = on_message

client.connect("192.168.1.21", 1883, 60)

# Blocking call that processes network traffic, dispatches callbacks and
# handles reconnecting.
# Other loop*() functions are available that give a threaded interface and a
# manual interface.
client.loop_start()



class Demo(QMainWindow):
	def __init__(self):
		super().__init__()
		self.text = 'Hello World'
		self.setGeometry(300, 300, 500, 500)
    
	def paintEvent(self, event):
		painter = QPainter()
		painter.begin(self)
		print('y')
		self.drawText(event, painter)
		painter.end()

	def drawText(self, event, p):
		p.setPen(QColor(255, 0, 0))
		p.setFont(QFont('Open Sans', 12))
		p.drawText(event.rect(), Qt.AlignCenter, self.text)

def main():
	app = QApplication(sys.argv)
	demo = Demo()
	demo.show()
	app.exec_()

main()
