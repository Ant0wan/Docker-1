FROM debian:buster-slim

LABEL maintainer "abarthel <abarthel@student.42.fr>"

ENV GO_VERSION 1.13.6

RUN apt-get update && apt-get install -y \
	wget \
	bzip2 \
	ca-certificates \
	--no-install-recommends \
 && rm -rf /var/lib/apt/lists/* \
 && wget https://dl.google.com/go/go${GO_VERSION}.linux-amd64.tar.gz \
 && tar -C /usr/local -xzf go${GO_VERSION}.linux-amd64.tar.gz \
 && export PATH=$PATH:/usr/local/go/bin
