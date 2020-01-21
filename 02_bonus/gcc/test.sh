#!/bin/sh
docker build -t mygcc:0 .
docker run --rm -v $PWD:/root mygcc:0 gcc main.c
