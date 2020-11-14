FROM mysql:8.0.22

MAINTAINER Vinta Chen <vinta.chen@gmail.com>

EXPOSE 3306

ENV TERM xterm

COPY conf.d/ /etc/mysql/conf.d/

ENTRYPOINT ["/entrypoint.sh"]

CMD ["mysqld"]
