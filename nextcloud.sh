#!/bin/bash -x
source local
docker run -d \
  --name=nextcloud \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=$TIMEZONE \
  -p 443:443 \
  -v ~/config/nextcloud:/config \
  -v /data:/data \
  --restart unless-stopped \
  lscr.io/linuxserver/nextcloud:latest
