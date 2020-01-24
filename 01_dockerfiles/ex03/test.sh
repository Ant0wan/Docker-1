#!/bin/sh

# Container to build the Dockerfile
#docker run --rm -it --name gitlab --privileged ubuntu:bionic

# Build image and prep directory
#mkdir gitlab
#cd gitlab && mkdir config && mkdir logs && mkdir data
docker build -t gl:0 .
docker run --rm -it --privileged --name gl:0

#docker run --detach --rm \
#  --privileged \
#  --hostname gitlab.example.com \
#  --publish 443:443 --publish 80:80 --publish 22:22 \
#  --name gitlab \
#  --restart always \
#  --volume ./gitlab/config:/etc/gitlab \
#  --volume ./gitlab/logs:/var/log/gitlab \
#  --volume ./gitlab/data:/var/opt/gitlab \
#  gitlab/gitlab-ce:latest
