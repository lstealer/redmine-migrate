#!/bin/sh
docker -t build redmine-custom:1.1 .
docker run -d -p 6300:3000 -p 6080:80 -p 6443:443 -p 6022:22 --name redmine_dev --net lan-network18-24 --ip 172.168.178.245 
-v /DATA/dockerPhysicalVolume/redmine_file/:/usr/src/redmine/files redmine-custom:1.1

