FROM saltstack/ubuntu-14.04-minimal:latest

MAINTAINER Vinta Chen <vinta.chen@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN locale-gen en_US.UTF-8 && \
    update-locale LANG=en_US.UTF-8 LC_CTYPE=en_US.UTF-8

ENV LANG=en_US.UTF-8

# RUN sed -i 's,//archive.ubuntu.com,//tw.archive.ubuntu.com,g' /etc/apt/sources.list
COPY sources.list /etc/apt/

RUN add-apt-repository -y ppa:saltstack/salt && \
    apt-get update && \
    apt-get install -y python-dev python-pip ssh && \
    rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

RUN pip install ipdb
