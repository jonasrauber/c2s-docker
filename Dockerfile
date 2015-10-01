FROM ubuntu:14.04

MAINTAINER Jonas Rauber

WORKDIR /data

RUN \
  apt-get update && \
  apt-get install -y -q \
    build-essential \
    git

RUN \
  apt-get update && \
  apt-get install -y -q \
    python \
    cython \
    python-pip \
    python-numpy \
    python-scipy \
    python-matplotlib

RUN \
  apt-get update && \
  apt-get install -y -q \
    autoconf \
    automake \
    libtool

RUN \
  git clone https://github.com/lucastheis/cmt.git

RUN \
  cd ./cmt/code/liblbfgs && \
  ./autogen.sh && \
  ./configure --enable-sse2 && \
  make CFLAGS="-fPIC"

RUN \
  cd ./cmt && \
  python setup.py build && \
  python setup.py install

RUN \
  pip install git+https://github.com/lucastheis/c2s.git

VOLUME /data/workdir
WORKDIR /data/workdir
ENTRYPOINT ["c2s"]
