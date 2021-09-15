# simillar here : https://github.com/miguelgrinberg/flask-video-streaming/blob/master/base_camera.py

from os import stat
from threading import Thread
import threading
import time
import io

class BaseCamera():
    thread = None
    frame  = None

    def __init__(self) -> None:

        BaseCamera.thread = threading.Thread(target=self._thread)
        BaseCamera.thread.start()

        while self.frame is None:
            time.sleep(0)

    @staticmethod
    def frames():
        raise NotImplemented

    @classmethod
    def _thread(cls):
        """Camera background thread."""
        print("camera thread started.")

        frames_iter = cls.frames()

        for frame in frames_iter:
            BaseCamera.frame = frame
            time.sleep(0)
        
        BaseCamera.thread = None
