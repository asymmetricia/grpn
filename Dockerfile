FROM ubuntu:focal

RUN echo deb-src http://us.archive.ubuntu.com/ubuntu focal main restricted universe >> /etc/apt/sources.list

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get -y build-dep grpn && \
    DEBIAN_FRONTEND=noninteractive apt-get -y install dpatch

WORKDIR /work
ADD debian debian
ADD Makefile .
ADD src src

RUN debian/rules binary
