FROM merlleu/rpi-python3.7
MAINTAINER Remi "Mr e-RL" Langdorph <r.langdorph@gmail.com>

RUN apt-get install libjpeg-dev libopenjp2-7 libtiff5 python3-dev build-essential && \
    pip3 install setuptools && \
    pip3 install gevent flask uwsgi&& \
    apt-get autoremove && \
    apt-get clean && \
    rm --force --recursive /var/lib/apt/lists/* /tmp/* /var/tmp/*
