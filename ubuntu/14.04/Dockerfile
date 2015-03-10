FROM ubuntu:14.04.2

MAINTAINER Vinta Chen <vinta.chen@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN sed -i 's,http://archive.ubuntu.com/,http://tw.archive.ubuntu.com/,g' /etc/apt/sources.list

RUN rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

RUN echo Asia/Taipei > /etc/timezone && dpkg-reconfigure tzdata

ENV LANG="en_US.UTF-8" \
    LANGUAGE="en_US.UTF-8" \
    LC_ALL="en_US.UTF-8" \
    LC_CTYPE="en_US.UTF-8"

RUN locale-gen en_US.UTF-8
RUN dpkg-reconfigure locales
