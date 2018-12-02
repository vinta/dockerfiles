FROM ubuntu:18.04

ENV DEBIAN_FRONTEND noninteractive
ENV TERM xterm

COPY sources.list /etc/apt/

RUN apt-get update && \
    apt-get install -Vy --no-install-recommends \
    ca-certificates \
    curl \
    tzdata \
    wget && \
    rm -rf /var/lib/apt/lists/*

ENV LANG=C.UTF-8

RUN echo "Asia/Taipei" > /etc/timezone && \
    ln -fs /usr/share/zoneinfo/Asia/Taipei /etc/localtime && \
    dpkg-reconfigure -f noninteractive tzdata

CMD ["/bin/bash"]
