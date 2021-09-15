import ffmpeg
import numpy as np
import cv2
import io

width, height = 640, 480


process = (
    ffmpeg.input("rtsp://192.168.1.111:8000")
    .output('-', format='h264')
    .run_async(pipe_stdout=True)
)