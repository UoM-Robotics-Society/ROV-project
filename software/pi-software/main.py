# The callback for when the client receives a CONNACK response from the server.
def on_connect(client, userdata, flags, rc):
    print("Connected with result code " + str(rc))

    # Subscribing in on_connect() means that if we lose the connection and
    # reconnect then subscriptions will be renewed.
    client.subscribe("device/get")


# The callback for when a PUBLISH message is received from the server.
def on_message(client, userdata, msg):
    if msg.topic == "device/get":
        print("#")
        jpg_image = msg.payload


def run():
    import picamera
    import time
    import io
    import paho.mqtt.client as mqtt

    ip_address = "0.0.0.0"
    client = mqtt.Client()
    client.on_connect = on_connect
    client.on_message = on_message
    client.connect(ip_address, 1883, 60)
    client.loop_start()
    with picamera.PiCamera() as camera:
        # let camera warm up
        time.sleep(2)

        camera.resolution = (1920, 1080)
        camera.framerate = 30

        stream = io.BytesIO()
        t = time.time()
        for _ in camera.capture_continuous(stream, "jpeg", use_video_port=True):
            # return current frame
            # print("#")
            stream.seek(0)
            jpg = stream.read()
            client.publish("device/feed", payload=jpg)

            # reset stream for next frame
            stream.seek(0)
            stream.truncate()
            tp = time.time()
            dt = tp - t
            t = tp


if __name__ == "__main__":
    run()
