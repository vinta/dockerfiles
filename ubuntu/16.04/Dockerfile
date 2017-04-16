FROM ubuntu:16.04

MAINTAINER Vinta Chen <vinta.chen@gmail.com>

ENV DEBIAN_FRONTEND noninteractive
ENV TERM xterm

COPY sources.list /etc/apt/

RUN apt-get update && \
    apt-get install -Vy \
    curl \
    locales \
    python3-apt \
    python3-software-properties \
    software-properties-common \
    tzdata \
    wget && \
    rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

RUN locale-gen en_US.UTF-8 && \
    update-locale LANG=en_US.UTF-8 LC_CTYPE=en_US.UTF-8

ENV LANG=en_US.UTF-8

RUN echo "Asia/Taipei" > /etc/timezone && \
    ln -fs /usr/share/zoneinfo/Asia/Taipei /etc/localtime && \
    dpkg-reconfigure -f noninteractive tzdata

CMD ["/bin/bash"]
