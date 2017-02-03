# docker-armhf-ffmpeg
Alpine container with ffmpeg

## Open Tasks
* Understand using entrypoint
* Understand which device to pass
* Push to Docker Hub

## How to get it

### Just pull the image from Docker Hub
The easiest and fastest way to get Jasper is to download a prebuilt image:

```docker pull torbenbrodt/armhf-ffmpeg```

### Or build your own image as follows:
```bash
$ git clone https://github.com/torbenbrodt/docker-armhf-ffmpeg.git
$ cd docker-armhf-ffmpeg
$ git checkout instructions
$ docker build -t docker-armhf-ffmpeg .
```
## How to run it
```bash
$ docker run -ti --privileged \
      -v /dev/video0:/dev/video0 \
      torbenbrodt/docker-armhf-ffmpeg /bin/bash
```
