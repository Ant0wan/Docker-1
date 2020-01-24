#!/bin/sh
#sudo docker run --detach \
#  --hostname gitlab.example.com \
#  --publish 443:443 --publish 80:80 --publish 22:22 \
#  --name gitlab \
#  --restart always \
#  --volume $PWD/gitlab/config:/etc/gitlab \
#  --volume $PWD/gitlab/logs:/var/log/gitlab \
#  --volume $PWD/gitlab/data:/var/opt/gitlab \
#  gitlab/gitlab-ce:latest

docker build -t mygitlab:0 .

# Container to build the Dockerfile
#docker run --rm -it --name gitlab --privileged ubuntu:bionic
#docker run --rm -it --privileged --name mygitlab mygitlab:0
