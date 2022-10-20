#!/bin/bash -x
source local
docker run -t -d \
  --name=collabora \
  --net=bravo \
  -p 127.0.0.1:9980:9980 
  -e -e "aliasgroup1=https://cloud.uribe.com.mx:443" 
  -e "username=admin" 
  -e "password=S3cRet" 
  --restart always 
collabora/code
