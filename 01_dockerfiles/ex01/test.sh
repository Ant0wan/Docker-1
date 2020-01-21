#!/bin/sh
docker build -t myts:0 .
docker run --rm myts:0
