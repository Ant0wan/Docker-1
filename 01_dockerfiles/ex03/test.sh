#!/bin/sh

# Container to build the Dockerfile
#docker run --rm -it --name gitlab --privileged ubuntu:bionic

# Prep directory
mkdir gitlab
cd gitlab && mkdir config && mkdir logs && mkdir data

# Build image
docker build -t mygitlab:0 .

# Run gitlab container
#docker run --rm --detach \
docker run --rm -it \
  --privileged \
  --name mygitlab \
  --volume $PWD/gitlab/config:/etc/gitlab \
  --volume $PWD/gitlab/logs:/var/log/gitlab \
  --volume $PWD/gitlab/data:/var/opt/gitlab \
  mygitlab:0

#  --hostname gitlab.example.com \
#  --publish 443:443 --publish 80:80 --publish 22:22 \
