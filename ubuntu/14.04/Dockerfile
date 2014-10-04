FROM ubuntu:14.04.1

MAINTAINER Vinta Chen <vinta.chen@gmail.com>

RUN sed -i 's,http://archive.ubuntu.com/,http://free.nchc.org.tw/,g' /etc/apt/sources.list
RUN rm -f /etc/apt/sources.list.d/proposed.list

RUN rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

CMD ["bash"]
