from os import stat
from camera import BaseCamera
import cv2

class opencvCamera(BaseCamera):
    @staticmethod
    def frames():
        camera = cv2.VideoCapture(0)

        while True:
            # read current frame
            _, img = camera.read()

            # encode as a jpeg image and return it 
            yield cv2.imencode(".jpg", img)[1].tobytes()