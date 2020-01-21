#!/bin/sh
docker build -t myvim:0 .
docker run -it --rm -v $PWD:/root/vim myvim:0 hello-world.c
