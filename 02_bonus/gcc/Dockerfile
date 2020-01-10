FROM debian:buster-slim

MAINTAINER abarthel <abarthel@student.42.fr>

RUN apt-get update && apt-get install -y \
	gcc \
	libc6-dev \
	--no-install-recommends \
 && rm -rf /var/lib/apt/lists/*
