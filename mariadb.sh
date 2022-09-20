docker run -d \
  --name=mariadb \
  --env-file=local \
  -e PUID=1000 \
  -e PGID=1000 \
  -p 3306:3306 \
  -v ~/config/mariadb:/config \
  --restart unless-stopped \
  lscr.io/linuxserver/mariadb:latest
