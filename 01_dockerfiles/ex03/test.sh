#!/bin/sh
#docker run --rm -it --name gitlab --privileged ubuntu:bionic
docker build -t mygitlab:0 .
docker run -it \
  --privileged \
  --hostname 127.0.0.2 \
  --publish 443:443 --publish 80:80 --publish 22:22 \
  --name mygitlab \
  --restart always \
  --volume $PWD/gitlab/config:/etc/gitlab \
  --volume $PWD/gitlab/logs:/var/log/gitlab \
  --volume $PWD/gitlab/data:/var/opt/gitlab \
  mygitlab:0
#ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
#  --hostname gitlab.example.com \
