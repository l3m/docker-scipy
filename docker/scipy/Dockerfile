FROM phusion/baseimage
RUN echo "deb http://archive.ubuntu.com/ubuntu trusty  multiverse" | sudo tee -a /etc/apt/sources.list
RUN apt-get update &&  apt-get install -qy python2.7 python-scipy python-setuptools && rm -rf /var/lib/apt-lists/*
