FROM mariadb:10.1.21

MAINTAINER Vinta Chen <vinta.chen@gmail.com>

EXPOSE 3306

ENV TERM xterm

COPY conf.d/ /etc/mysql/conf.d/

ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["mysqld"]
