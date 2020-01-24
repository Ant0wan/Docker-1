#!/bin/sh

# Build image and prep directory
#mkdir gitlab
#cd gitlab && mkdir config && mkdir logs && mkdir data

# Run for test build
#docker run --rm -it --name gitlab --privileged ubuntu:bionic
#docker run --rm -it --name gitlab -p 443:443 -p 80:80 -p 22:22 --privileged ubuntu:bionic

#docker build -t gl:0 .
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

#docker run --rm --privileged gl:0 .
