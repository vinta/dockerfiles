FROM ubuntu:18.04

ENV DEBIAN_FRONTEND noninteractive
ENV TERM xterm

RUN apt-get update && \
    apt-get install -Vy --no-install-recommends \
    apache2-utils \
    ca-certificates \
    curl \
    dnsutils \
    dstat \
    htop \
    iotop \
    iputils-ping \
    psmisc \
    sysstat \
    tzdata \
    vim \
    wget && \
    apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false && \
    rm -rf /var/lib/apt/lists/*

ENV LANG=C.UTF-8

RUN echo "Asia/Taipei" > /etc/timezone && \
    ln -fs /usr/share/zoneinfo/Asia/Taipei /etc/localtime && \
    dpkg-reconfigure -f noninteractive tzdata

CMD ["/bin/bash"]
