FROM ubuntu:16.04

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
    python3-apt \
    python3-software-properties \
    software-properties-common && \
    rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*
