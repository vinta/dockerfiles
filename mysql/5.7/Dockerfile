FROM mysql:5.7.32

MAINTAINER Vinta Chen <vinta.chen@gmail.com>

EXPOSE 3306

ENV TERM xterm

COPY conf.d/ /etc/mysql/conf.d/

ENTRYPOINT ["/entrypoint.sh"]

CMD ["mysqld"]
