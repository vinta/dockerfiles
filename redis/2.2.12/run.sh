#!/bin/bash

set -e

DATA_DIR="/var/lib/redis"

chown -R redis:redis $DATA_DIR

echo "Starting Redis server..."
exec redis-server /etc/redis/redis.conf
