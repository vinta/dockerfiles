FROM vinta/ubuntu:14.04

MAINTAINER Vinta Chen <vinta.chen@gmail.com>

RUN apt-get update && \
    apt-get install -y \
    -o APT::Install-Recommends=false -o APT::Install-Suggests=false \
    python-dev \
    python-pip && \
    rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*
