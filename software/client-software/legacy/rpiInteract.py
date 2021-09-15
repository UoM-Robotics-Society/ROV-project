from os import stat
import socket
from struct import *
from math import ceil


class rpiInteract(object):
    def __init__(self, HOST, PORT) -> None:
        super().__init__()
        self.HOST = HOST
        self.PORT = PORT
        self.connection = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        self.connection.connect((self.HOST, self.PORT))

    def __del__(self):
        self.connection.close()

    def send_command(self, command: str, returnMessageSize=0):
        self.connection.send(command.encode())
        return self.get(returnMessageSize)

    def get(self, returnMessageSize=1024):
        if returnMessageSize != 0:
            return self.connection.recv(returnMessageSize)
        return None

    def poll_sensor(self):
        self.send_command("sensor")
        s = calcsize('i')
        for i in range(10):
            data = self.get(s)
            print(unpack('i', data))

    def get_test_image(self):
        chunk_size = 4096

        self.send_command("test")
        header = self.get(calcsize('i'))
        length = unpack('i', header)[0]

        v = b""
        while length:
            chunk = min(length, chunk_size)
            data = self.connection.recv(chunk)
            if not data: break
            v += data
            length -= len(data)

        f = open("test.jpg", "wb")
        f.write(v)
        f.close()

    def start_stream(self):
        self.send_command("camera")
        response = self.get(calcsize('i'))
        status_code = unpack('i', response)[0]
        print(status_code)