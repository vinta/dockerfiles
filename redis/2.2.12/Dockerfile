FROM vinta/ubuntu:12.04

MAINTAINER Vinta Chen <vinta.chen@gmail.com>

RUN apt-get update && apt-get install -y \
    redis-server

RUN apt-get clean && \
    rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

COPY redis.conf /etc/redis/

COPY run.sh /
RUN chmod +x /run.sh

EXPOSE 6379

CMD ["/run.sh"]
