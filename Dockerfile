FROM debian:buster-slim

WORKDIR /opt/s3wipe

RUN \
  sed -i s#http://deb.debian.org/#http://archive.debian.org/# /etc/apt/sources.list && \
  apt-get -y update && \
  apt-get -y install python-boto && \
  rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/*

COPY . ./

ENTRYPOINT ["./s3wipe"]
