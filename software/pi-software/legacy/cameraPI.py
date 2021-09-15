from camera import BaseCamera
import time
import io
import picamera

class piCamera(BaseCamera):

    @staticmethod
    def frames():
        with picamera.PiCamera() as camera:
            # let camera warm up
            time.sleep(2)

            camera.resolution = (480, 360)

            stream = io.Bytes()
            for _ in camera.capture_continuous(stream, "jpeg", use_video_port=True):
                # return current frame
                stream.seek(0)
                yield stream.read()


                # reset stream for next frame
                stream.seek(0)
                stream.truncate()