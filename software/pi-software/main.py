import socket
from Server import *
from ServerCallback import *
import sys

try:
    import picamera
    PICAMERA_AVAILABLE = True
except ImportError:
    PICAMERA_AVAILABLE = False



if __name__ == "__main__":
    s = MultiprocessServer(ServerCallbackMock, PORT=8081, PICAMERA_AVAILABLE=PICAMERA_AVAILABLE)
    s.serve_forever()
