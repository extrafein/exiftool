FROM alpine:latest AS gitsource

RUN apk update && apk add --no-cache git

WORKDIR /app

RUN git clone https://github.com/exiftool/exiftool .

FROM alpine:edge

RUN apk update

RUN apk add --no-cache exiftool

COPY --from=gitsource /app/arg_files /usr/local/bin

WORKDIR /tmp
