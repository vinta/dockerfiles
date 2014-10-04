FROM vinta/ubuntu:14.04

MAINTAINER Vinta Chen <vinta.chen@gmail.com>

RUN apt-get install -y \
    python-dev \
    python-pip

RUN rm -rf /var/cache/apt/archives/*

RUN pip install pip --upgrade
RUN pip install ipdb ipython uniout

CMD ["bash"]
