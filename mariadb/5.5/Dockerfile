FROM vinta/ubuntu:14.04

MAINTAINER Vinta Chen <vinta.chen@gmail.com>

RUN apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xcbcb082a1bb943db && echo 'deb http://ftp.yz.yamagata-u.ac.jp/pub/dbms/mariadb/repo/5.5/ubuntu trusty main' > /etc/apt/sources.list.d/mariadb.list

RUN apt-get update && apt-get install -y \
    mariadb-server-5.5

RUN rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

# TODO
# COPY my.cnf /etc/mysql/

COPY run.sh /
RUN chmod +x /run.sh

EXPOSE 3306

CMD ["/run.sh"]
