MySQL 5.5
=========

``` bash
$ docker run --name mysql_data vinta/mysql_data:latest
$ docker run --name mysql \
    --volumes-from mysql_data \
    -p 3306:3306 \
    -e MYSQL_ROOT_PASSWORD=123 \
    -e MYSQL_DATABASE=my_db \
    -e MYSQL_USER=my_user \
    -e MYSQL_PASSWORD=my_pass \
    -d \
    vinta/mysql:5.5
```
