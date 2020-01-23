#!/bin/sh
#mkdir gitlab
#cd gitlab && mkdir config && mkdir logs && mkdir data
#docker run --detach --rm \
#  --hostname gitlab.example.com \
#  --publish 443:443 --publish 80:80 --publish 22:22 \
#  --name gitlab \
#  --restart always \
#  --volume ./gitlab/config:/etc/gitlab \
#  --volume ./gitlab/logs:/var/log/gitlab \
#  --volume ./gitlab/data:/var/opt/gitlab \
#  gitlab/gitlab-ce:latest
# --privileged

docker run --rm --privileged gl:0 .
