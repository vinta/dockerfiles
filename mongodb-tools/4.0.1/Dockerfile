FROM ubuntu:18.04

ENV DEBIAN_FRONTEND noninteractive
ENV TERM xterm

RUN apt-get update && \
    apt-get install -Vy \
    -o APT::Install-Recommends=false -o APT::Install-Suggests=false \
    ca-certificates \
    gnupg

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 9DA31620334BD75D9DCB49F368818C72E52529D4 && \
    echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-4.0.list && \
    apt-get update && \
    apt-get install -Vy \
    mongodb-org-tools=4.0.1 && \
    rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*
