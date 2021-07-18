import socket
from multiprocessing import Process, Lock, Manager
import os

def callback_handle_client(callbackClass, conn, addr, camera_lock, hardware_lock, manager):
    callback = callbackClass(conn, addr, camera_lock, hardware_lock, manager)
    callback.interact()


class AbstractServer(object):

    def __init__(self, PORT=8080, HOST="") -> None:
        super().__init__()
        self.HOST = ''
        self.PORT = PORT
        self.raspberry_pi_camera_lock = Lock()
        self.raspberry_pi_hardware_lock = Lock()

        self.socket_server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        self.socket_server.bind((HOST, PORT))

    def serve_forever(self) -> None:
        raise NotImplemented


class BasicServer(AbstractServer):

    def __init__(self, callback, PORT=8080, HOST="") -> None:
        super().__init__(PORT=PORT, HOST=HOST)
        self.callback = callback

    def serve_forever(self) -> None:
        try:
            while True:
                self.socket_server.listen(1)
                conn, addr = self.socket_server.accept()
                with conn:
                    self.callback(conn, addr)
        except KeyboardInterrupt:
            print("Server Execution ended")
        finally:
            self.socket_server.close()


class MultiprocessServer(AbstractServer):
    def __init__(self, callback, PORT=8080, HOST="", **kwargs) -> None:
        super().__init__(PORT=PORT, HOST=HOST)
        self.callback = callback
        self.processes = []
        self.PICAMERA_AVAILABLE = kwargs['PICAMERA_AVAILABLE']

    def serve_forever(self) -> None:
        print(self.PICAMERA_AVAILABLE)

        with Manager() as manager:
            global_state = manager.dict()
            global_state['PICAMERA_AVAILABLE'] = self.PICAMERA_AVAILABLE
            try:
                while True:
                    self.socket_server.listen(1)
                    conn, addr = self.socket_server.accept()

                    p = Process(target=callback_handle_client,
                                args=(self.callback, conn, addr, self.raspberry_pi_camera_lock, self.raspberry_pi_hardware_lock, global_state))
                    self.processes.append(p)
                    p.start()

            except KeyboardInterrupt:
                print("Server Execution ended")
                print(self.processes)
            finally:
                self.socket_server.close()
