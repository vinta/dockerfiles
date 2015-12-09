FROM mysql:5.6

MAINTAINER Vinta Chen <vinta.chen@gmail.com>

EXPOSE 3306

COPY conf.d/ /etc/mysql/conf.d/

ENTRYPOINT ["/entrypoint.sh"]
CMD ["mysqld"]
