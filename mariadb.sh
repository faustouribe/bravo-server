#!/bin/bash -x
source local
docker run -d \
  --name=mariadb \
  -e PUID=1000 \
  -e PGID=1000 \
  -p 3306:3306 \
  -v ~/config/mariadb:/config \
  --restart unless-stopped \
  lscr.io/linuxserver/mariadb:latest
