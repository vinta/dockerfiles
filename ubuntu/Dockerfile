FROM ubuntu:14.04
# FROM ubuntu-upstart:14.04

# MAINTAINER Vinta Chen <vinta.chen@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN sed -i 's,us.archive,tw.archive,g' /etc/apt/sources.list && \
    sed -i 's,http://archive,http://tw.archive,g' /etc/apt/sources.list

RUN apt-get update && apt-get install -y \
    htop \
    vim

CMD ["bash"]
