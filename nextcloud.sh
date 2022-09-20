docker run -d \
  --name=nextcloud \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=America/Chicago \
  -p 443:443 \
  -v ~/config/nextcloud:/config \
  -v /data:/data \
  --restart unless-stopped \
  lscr.io/linuxserver/nextcloud:latest
