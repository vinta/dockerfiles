#!/bin/bash

set -e

MYSQL_ROOT_PASSWORD=${MYSQL_ROOT_PASSWORD:-""}
MYSQL_DATABASE=${MYSQL_DATABASE:-""}
MYSQL_USER=${MYSQL_USER:-""}
MYSQL_PASSWORD=${MYSQL_PASSWORD:-""}

VOLUME_HOME="/var/lib/mysql"

chmod -R 700 $VOLUME_HOME
chown -R mysql:mysql $VOLUME_HOME

if [[ ! -d $VOLUME_HOME/mysql ]]; then
    if [ -z "$MYSQL_ROOT_PASSWORD" ]; then
        echo "You need to add \`-e MYSQL_ROOT_PASSWORD=YOUR_PASS\` to run this container"
        exit 1
    fi

    echo "Initializing MySQL..."
    mysql_install_db --user=mysql --datadir=$VOLUME_HOME

    echo "Starting MySQL server..."
    # /usr/sbin/mysqld --user=mysql >/dev/null 2>&1
    /usr/sbin/mysqld --user=mysql >/dev/null 2>&1 &

    # wait for mysql server to start (max 30 seconds)
    timeout=30
    while ! /usr/bin/mysqladmin -u root status >/dev/null 2>&1
    do
        timeout=$(($timeout - 1))
        if [ $timeout -eq 0 ]; then
            echo "Could not connect to mysql server. Aborting..."
            exit 1
        fi

        echo "Waiting for database server to accept connections..."
        sleep 1
    done

    tfile=`mktemp`
    if [[ ! -f "$tfile" ]]; then
        return 1
    fi

    cat << EOF > $tfile
    USE mysql;
    FLUSH PRIVILEGES;
    GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION;
    UPDATE user SET password=PASSWORD("$MYSQL_ROOT_PASSWORD") WHERE user='root';
EOF

    if [[ $MYSQL_DATABASE != "" ]]; then
        echo "CREATE DATABASE IF NOT EXISTS \`$MYSQL_DATABASE\` CHARACTER SET utf8 COLLATE utf8_general_ci;" >> $tfile

        if [[ $MYSQL_USER != "" ]]; then
            echo "GRANT ALL ON \`$MYSQL_DATABASE\`.* to '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';" >> $tfile
        fi
    fi

    echo "Executing init SQL..."
    mysql < $tfile
    rm -f $tfile

    echo "Assigning debian-sys-maint user's password..."
    DB_MAINT_PASS=$(cat /etc/mysql/debian.cnf | grep -m 1 "password\s*=\s*"| sed 's/^password\s*=\s*//')
    mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'debian-sys-maint'@'localhost' IDENTIFIED BY '$DB_MAINT_PASS';"

    echo "Stoping MySQL server..."
    /usr/bin/mysqladmin --defaults-file=/etc/mysql/debian.cnf shutdown
else
    echo "Using an existing volume..."
fi

echo "Starting MySQL server..."
exec /usr/sbin/mysqld --user=mysql
