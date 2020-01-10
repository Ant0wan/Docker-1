FROM debian:buster

LABEL maintainer "abarthel <abarthel@student.42.fr>"

RUN apt-get update && apt-get install -y \
	build-essential \
	libncurses5-dev \
	make \
	vim \
	git \
	ca-certificates \
	--no-install-recommends \
 && rm -rf /var/lib/apt/lists/*

ENTRYPOINT /bin/bash
