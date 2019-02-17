FROM balenalib/rpi-raspbian:stretch
MAINTAINER Remi "Mr e-RL" Langdorph <r.langdorph@gmail.com>

RUN apt-get update -y && \
    apt-get install wget \
                    build-essential \
                    tk-dev \
                    libncurses5-dev \
                    libncursesw5-dev \
                    libreadline6-dev \
                    libdb5.3-dev \
                    libgdbm-dev \
                    libsqlite3-dev \
                    libssl-dev \
                    libbz2-dev \
                    libexpat1-dev \
                    liblzma-dev \
                    zlib1g-dev \
                    libffi-dev -y  && \
    wget https://www.python.org/ftp/python/3.7.0/Python-3.7.0.tar.xz && \
    tar xf Python-3.7.0.tar.xz && \
    cd Python-3.7.0 && \
    ./configure && \
    make -j 4 && \
    make altinstall && \
    cd / && \
    rm -r Python-3.7.0 && \
    rm Python-3.7.0.tar.xz && \
    apt-get install python3-pip && \
    pip3 install --upgrade pip && \
    apt-get --purge remove build-essential \
                           tk-dev -y && \
    apt-get --purge remove libncurses5-dev \
                           libncursesw5-dev \
                           libreadline6-dev -y && \
    apt-get --purge remove libdb5.3-dev \
                           libgdbm-dev \
                           libsqlite3-dev \
                           libssl-dev -y && \
    apt-get --purge remove libbz2-dev \
                           libexpat1-dev \
                           liblzma-dev \
                           zlib1g-dev \
                           libffi-dev -y && \
    apt-get autoremove -y && \
    apt-get clean

WORKDIR /data

# RUN python3.7
