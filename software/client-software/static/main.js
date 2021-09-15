let HZ = 30;
let feed_screen = document.getElementById("feed");
let dat;

function encodeToBase64(img)
{
    let byteArray = new Uint8Array(img);
    let stringByteArray = "";
    for (var i = 0; i < byteArray.length; ++i)
    {
        stringByteArray += String.fromCharCode(byteArray[i]);
    }
    return btoa(stringByteArray);
}

function poll_data()
{
    socket.emit("get_data", {});
}

function update(data)
{
    let new_image = data["feed"];
    dat = data;
    feed_screen.src = "data:image/jpeg;base64," + new_image;
}


var socket = io();

//socket.on('connect', function() {});
socket.on("data", update);


window.setInterval(poll_data, 1000 / HZ);