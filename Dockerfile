FROM debian:buster-slim

WORKDIR /opt/s3wipe

RUN \
  apt-get -y update && \
  apt-get -y install python-boto && \
  rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/*

COPY . ./

ENTRYPOINT ["./s3wipe"]
