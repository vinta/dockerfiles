FROM vinta/ubuntu:14.04

MAINTAINER Vinta Chen <vinta.chen@gmail.com>

RUN apt-get update && \
    apt-get install -y \
    -o APT::Install-Recommends=false -o APT::Install-Suggests=false \
    python3.4 \
    python3.4-dev \
    python3-pip && \
    rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

RUN ln -sf /usr/bin/python3 /usr/bin/python
