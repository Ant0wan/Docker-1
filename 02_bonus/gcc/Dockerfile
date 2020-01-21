FROM buildpack-deps:buster

LABEL maintainer "abarthel <abarthel@student.42.fr>"

RUN apt-get update && apt-get install -y \
	gcc \
	libc6-dev \
	--no-install-recommends \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /root

#docker run --rm -v $PWD:/root mygcc:0 gcc -o test main.c
