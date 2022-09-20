#!/bin/bash -x
source local
docker run -d \
  --name=mariadb \
  --net=bravo \
  -e PUID=1000 \
  -e PGID=1000 \
  -e MYSQL_ROOT_PASSWORD=$MYSQL_ROOT_PWD \
  -e TZ=$TIMEZONE \
  -e MYSQL_DATABASE=$DB_NAME \
  -e MYSQL_USER=$DB_USER \
  -e MYSQL_PASSWORD=$DB_PWD \
  -p 3306:3306 \
  -v ~/config/mariadb:/config \
  --restart unless-stopped \
  lscr.io/linuxserver/mariadb:latest
