FROM ubuntu:14.04

# MAINTAINER Vinta Chen <vinta.chen@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN echo "deb http://free.nchc.org.tw/ubuntu/ trusty main universe" > /etc/apt/sources.list

RUN apt-get update && apt-get install -y \
    redis-server

# redis
EXPOSE 6379

ENTRYPOINT ["/usr/bin/redis-server"]
