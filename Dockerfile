FROM ubuntu:trusty

MAINTAINER "Michael Edwards <mikes1988@gmail.com>"

RUN DEBIAN_FRONTEND=noninteractive apt-get update

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y gzip curl python libssl-dev pkg-config build-essential

RUN curl -O http://nodejs.org/dist/v0.12.4/node-v0.12.4.tar.gz && \
    tar xf node-v0.12.4.tar.gz && \
    cd node-* && \
    ./configure && \
    make && \
    make install
