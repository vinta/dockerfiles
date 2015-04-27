FROM ubuntu:14.04.2

MAINTAINER Vinta Chen <vinta.chen@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN locale-gen en_US.UTF-8 && \
    update-locale LANG=en_US.UTF-8 LC_CTYPE=en_US.UTF-8

ENV LANG=en_US.UTF-8

RUN echo Asia/Taipei > /etc/timezone && \
    dpkg-reconfigure tzdata

COPY sources.list /etc/apt/

RUN rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*
