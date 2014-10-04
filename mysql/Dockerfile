FROM vinta/ubuntu:14.04

# MAINTAINER Vinta Chen <vinta.chen@gmail.com>

RUN apt-get install -y \
    mysql-server-5.5

# mysql
EXPOSE 3306

# VOLUME  ["/etc/mysql", "/var/lib/mysql"]
VOLUME  ["/var/lib/mysql"]

# CMD ["service", "mysql", "start"]

ADD run.sh /run.sh
RUN chmod +x /run.sh
CMD ["/run.sh"]
