from multiprocessing.managers import Server
import os
from struct import *
from math import ceil
import time

class AbstractServerCallback(object):

    def __init__(self, conn, addr, camera_lock, hardware_lock, manager) -> None:
        super().__init__()
        self.conn = conn
        self.addr = addr
        self.camera_lock = camera_lock
        self.hardware_lock = hardware_lock
        self.manager = manager

    def interact():
        raise NotImplemented


class ServerCallbackEcho(AbstractServerCallback):
    def __init__(self, conn, addr, camera_lock, hardware_lock, manager) -> None:
        super().__init__(conn, addr, camera_lock, hardware_lock, manager)

    def interact(self):
        try:
            print("Connected by ", self.addr)
            while True:
                data = self.conn.recv(1024)
                if not data:
                    break
                self.conn.send(data)

        except KeyboardInterrupt:
            print(f"process : {os.getpid()} killed")
        finally:
            self.conn.close()


class ServerCallbackMock(AbstractServerCallback):
    def __init__(self, conn, addr, camera_lock, hardware_lock, manager) -> None:
        super().__init__(conn, addr, camera_lock, hardware_lock, manager)

    def interact_sensor(self):
        for i in range(10):
            self.conn.send(pack('i', i))

    def interact_camera(self):
        print(self.manager)
        # camera available, start streaming
        if self.manager["PICAMERA_AVAILABLE"]:
            self.conn.send(pack('i', 1))
        
        # camera not available, leave
        else:
            self.conn.send(pack('i', 0))

    def interact_test(self):
        binary_data = open("test/test.jpg", "rb").read()
        self.conn.send(pack("i", len(binary_data)))
        self.conn.sendall(binary_data)

    def interact(self):
        try:
            print("Connected by ", self.addr)
            while True:

                # get command
                data = self.conn.recv(1024)

                if not data:
                    break
                
                # interaction with sensors/peripherals etc 
                if data == b'sensor':
                    self.interact_sensor()
                    
                # camera operations 
                elif data == b"camera":
                    self.interact_camera()
                
                # test transfer 
                elif data == b"test":
                    self.interact_test()

                # echo back 
                else:
                    self.conn.send(data)

        except KeyboardInterrupt:
            print(f"process : {os.getpid()} killed")
        except ConnectionResetError:
            print(f"Socket closed Error ! process : {os.getpid()} killed")
        finally:
            self.conn.close()


class ServerCallbackCamera(ServerCallbackMock):

    def transmit_camera_data(self):
        connection = self.conn.makefile('wb')

        try:
            camera = picamera.PiCamera()
            camera.resolution = (240, 144)
            
            # start a preview and let the camera warm up for 2 seconds
            camera.start_preview()
            time.sleep(2)

            # start recording
            camera.start_recording(connection, format="h264")
            camera.wait_recording(180)
            camera.stop_recording()

        finally:
            connection.close()
            



    def interact_camera(self):
        print(self.manager)
        # camera available, start streaming
        if self.manager["PICAMERA_AVAILABLE"]:
            self.conn.send(pack('i', 1))
            self.transmit_camera_data()
        
        # camera not available, leave
        else:
            self.conn.send(pack('i', 0))

