FROM ubuntu:xenial

MAINTAINER Jonas Boesch <j@l3m.io>

RUN apt-get update &&  apt-get install --no-install-recommends -qy \
python2.7-minimal python2.7-dev python-pip python-scipy python-lxml python-setuptools python-wheel gcc \
&& pip install greenlet pycrypto lockfile pyExcelerator python_daemon simplejson lxml redis redis-collections \
&& apt-get remove --purge -y $BUILD_PACKAGES \
&& apt-get remove --purge -y gcc cpp gcc-5 cpp-5 linux-libc-dev \
&& apt-get autoremove -y \
&& rm -rf /var/lib/apt/lists/*

COPY ./docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]