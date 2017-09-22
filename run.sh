#!/usr/bin/env bash

if [ $# -lt 1 ]; then
    echo "usage: $0 <php-version> [containername]"
    exit 1
fi

set -ex

PHP_VERSION=$1
CONTAINER_NAME=${2-wpdev}

docker pull miya0001/phpenv:$PHP_VERSION
docker run -idt --name $CONTAINER_NAME --privileged --volume="$(pwd)":/shared/:rw miya0001/phpenv:$PHP_VERSION "/bin/bash"

# Init MySQL
docker exec $CONTAINER_NAME sudo chown -R mysql:mysql /var/lib/mysql
docker exec $CONTAINER_NAME sudo mysql_install_db --datadir=/var/lib/mysql --user=mysql
docker exec $CONTAINER_NAME sudo service mysql start

docker exec $CONTAINER_NAME ln -s /var/run/mysqld/mysqld.sock /tmp/mysql.sock || echo "/tmp/mysql.sock already exists."

# Creates MySQL database for WordPress
docker exec $CONTAINER_NAME mysql -u root -e "CREATE DATABASE wordpress_tests;" -p1111
docker exec $CONTAINER_NAME mysql -u root -e 'GRANT ALL PRIVILEGES ON wp_cli_test.* TO "wp_cli_test"@"localhost" IDENTIFIED BY "password1";' -p1111

echo "Run: docker exec -it $CONTAINER_NAME bash"
