FROM container4armhf/armhf-alpine:3.3

MAINTAINER Philipp Schmitt <philipp@schmitt.co>

RUN apk add --update ffmpeg

ENTRYPOINT ["/usr/bin/ffmpeg"]
