FROM ubuntu:14.04.1
# FROM ubuntu-upstart:14.04

# MAINTAINER Vinta Chen <vinta.chen@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN sed -i 's,http://archive.ubuntu.com/,http://free.nchc.org.tw/,g' /etc/apt/sources.list

RUN apt-get update && apt-get install -y \
    htop \
    vim

CMD ["bash"]
