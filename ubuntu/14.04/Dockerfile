FROM ubuntu:14.04.1

MAINTAINER Vinta Chen <vinta.chen@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN sed -i 's,http://archive.ubuntu.com/,http://free.nchc.org.tw/,g' /etc/apt/sources.list
RUN sed -i 's,http://archive.ubuntu.com/,http://free.nchc.org.tw/,g' /etc/apt/sources.list.d/proposed.list
# RUN rm -f /etc/apt/sources.list.d/proposed.list

# RUN apt-get update && apt-get install -y \
#     htop

RUN rm -rf /var/cache/apt/archives/*

CMD ["bash"]
