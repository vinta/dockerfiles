FROM vinta/ubuntu:14.04

MAINTAINER Vinta Chen <vinta.chen@gmail.com>

RUN apt-get update && \
    apt-get install -y \
    -o APT::Install-Recommends=false -o APT::Install-Suggests=false \
    python3.4 \
    python3.4-dev \
    python3-pip && \
    rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

RUN pip3 install pip --upgrade
RUN pip3 install ipdb ipython

CMD ["python3"]
