
from os import error, popen
from fastapi import FastAPI
from starlette.responses import StreamingResponse
import io

try:
    from cameraPI import piCamera
    camera = piCamera()
except ModuleNotFoundError:
    from cameraOCV import opencvCamera
    camera = opencvCamera()


app = FastAPI()

@app.get("/camera")
def get_camera():
    return StreamingResponse(io.BytesIO(camera.frame), media_type="image/jpg")
