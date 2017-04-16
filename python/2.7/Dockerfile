FROM vinta/ubuntu:14.04

MAINTAINER Vinta Chen <vinta.chen@gmail.com>

RUN apt-get update && \
    apt-get install -Vy \
    -o APT::Install-Recommends=false -o APT::Install-Suggests=false \
    build-essential \
    libffi-dev \
    libssl-dev \
    python-dev \
    python-pip && \
    rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

RUN pip install wheel

CMD ["python"]
