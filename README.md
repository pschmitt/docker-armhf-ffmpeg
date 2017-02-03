# docker-armhf-ffmpeg
Alpine container with ffmpeg for armhf architecture. Tested with Raspberry PI 3.

## How to get it

### Just pull the image from Docker Hub
The easiest and fastest way to get ffmpeg is to download a prebuilt image:

```docker pull pschmitt/armhf-ffmpeg```

### Or build your own image as follows:
```bash
$ git clone https://github.com/pschmitt/docker-armhf-ffmpeg.git
$ cd docker-armhf-ffmpeg
$ docker build -t docker-armhf-ffmpeg .
```
## How to run it
```bash
$ docker run --privileged \
      -v /dev/video0:/dev/video0 \
      -v /usr/share/openhab/webapps/webcam/1/:/tmp/ffmpeg \
      torbenbrodt/docker-armhf-ffmpeg \
      -f video4linux2 -s vga -i /dev/video0 -vframes 3 -y /tmp/ffmpeg/%01d.jpg
```

*IMPORTANT*: use the -v parameter to have a shared filesystem between the host system and ffmpeg.

For more information on ffmpeg check http://ffmpeg.org/ffmpeg.html
