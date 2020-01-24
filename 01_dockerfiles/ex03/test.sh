#!/bin/sh
# Container to build the Dockerfile
#docker run --rm -it --name gitlab --privileged ubuntu:bionic
docker build -t mygitlab:0 .
docker run --rm -it --privileged --name mygitlab mygitlab:0
