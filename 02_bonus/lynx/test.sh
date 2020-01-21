#!/bin/sh
HOMEPAGE="https://www.google.com/"
docker build -t lynx:0 .
docker run -it --rm lynx:0 $HOMEPAGE
