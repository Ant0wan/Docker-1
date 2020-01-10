FROM debian:buster-slim

MAINTAINER abarthel <abarthel@student.42.fr>

RUN apt-get update && apt-get install -y \
	build-essential \
	libncurses5-dev \
	make \
	--no-install-recommends \
 && rm -rf /var/lib/apt/lists/*
