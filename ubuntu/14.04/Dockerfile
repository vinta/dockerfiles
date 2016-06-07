FROM ubuntu:14.04.4

MAINTAINER Vinta Chen <vinta.chen@gmail.com>

ENV DEBIAN_FRONTEND noninteractive
ENV TERM xterm

RUN locale-gen en_US.UTF-8 && \
    update-locale LANG=en_US.UTF-8 LC_CTYPE=en_US.UTF-8

ENV LANG=en_US.UTF-8

RUN echo Asia/Taipei > /etc/timezone && \
    dpkg-reconfigure tzdata

COPY sources.list /etc/apt/

RUN apt-get update && \
    apt-get install -Vy \
    curl \
    python-apt \
    python-software-properties \
    software-properties-common \
    wget && \
    rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*
