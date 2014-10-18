FROM vinta/ubuntu:14.04

MAINTAINER Vinta Chen <vinta.chen@gmail.com>

RUN apt-get update && apt-get install -y \
    mysql-server-5.5

RUN apt-get clean && \
    rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

COPY my.cnf /etc/mysql/

COPY run.sh /
RUN chmod +x /run.sh

EXPOSE 3306

CMD ["/run.sh"]
