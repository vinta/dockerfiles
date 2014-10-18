FROM ubuntu:12.04.5

MAINTAINER Vinta Chen <vinta.chen@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN sed -i 's,http://archive.ubuntu.com/,http://free.nchc.org.tw/,g' /etc/apt/sources.list

RUN echo Asia/Taipei > /etc/timezone && dpkg-reconfigure tzdata
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV LC_ALL en_US.UTF-8
ENV LC_CTYPE en_US.UTF-8
RUN locale-gen en_US.UTF-8
RUN dpkg-reconfigure locales

RUN rm -f /etc/apt/sources.list.d/proposed.list
RUN rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*
RUN echo "force-unsafe-io" > /etc/dpkg/dpkg.cfg.d/02apt-speedup
RUN echo "Acquire::http {No-Cache=True;};" > /etc/apt/apt.conf.d/no-cache

CMD ["bash"]
