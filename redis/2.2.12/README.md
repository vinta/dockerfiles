Redis 2.2.12
============

``` bash
$ docker run --name redis_data vinta/redis_data:latest
$ docker run --name redis \
    --volumes-from redis_data \
    -p 6379:6379 \
    -d \
    vinta/redis:2.2.12
```
