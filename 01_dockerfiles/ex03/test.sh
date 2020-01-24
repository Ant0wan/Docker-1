#!/bin/sh
#docker run --rm -it --name gitlab --privileged ubuntu:bionic
docker build -t mygitlab:0 .
docker run --detach \
  --privileged \
  --hostname gitlab.example.com \
  --publish 443:443 --publish 80:80 --publish 22:22 \
  --name mygitlab \
  --restart always \
  --volume $PWD/gitlab/config:/etc/gitlab \
  --volume $PWD/gitlab/logs:/var/log/gitlab \
  --volume $PWD/gitlab/data:/var/opt/gitlab \
  mygitlab:0
#  gitlab/gitlab-ce:latest
