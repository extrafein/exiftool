FROM alpine:edge

RUN apk update

RUN apk add --no-cache exiftool

WORKDIR /tmp
