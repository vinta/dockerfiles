FROM ubuntu:14.04.1

MAINTAINER Vinta Chen <vinta.chen@gmail.com>

RUN sed -i 's,http://archive.ubuntu.com/,http://free.nchc.org.tw/,g' /etc/apt/sources.list
RUN rm -f /etc/apt/sources.list.d/proposed.list

RUN echo "force-unsafe-io" > /etc/dpkg/dpkg.cfg.d/02apt-speedup
RUN echo "Acquire::http {No-Cache=True;};" > /etc/apt/apt.conf.d/no-cache

RUN rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

RUN echo Asia/Taipei > /etc/timezone && dpkg-reconfigure --frontend noninteractive tzdata

CMD ["bash"]
