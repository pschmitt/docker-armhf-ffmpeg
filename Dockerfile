FROM container4armhf/armhf-alpine:3.3

RUN apk add --update ffmpeg

ENTRYPOINT ["/usr/bin/ffmpeg"]
