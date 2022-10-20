#!/bin/bash -x
source local
docker run -t -d \
  --name=collabora \
  --net=bravo \
  -p 9980:9980 \ 
  -e aliasgroup1="https://cloud.uribe.com.mx:443" \
  -e username=$COLLAB_USER \
  -e password=$COLLAB_PWD \
  --restart unless-stopped \
collabora/code
