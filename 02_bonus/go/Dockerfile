FROM golang:latest

LABEL maintainer "abarthel <abarthel@student.42.fr>"

RUN apt-get update && apt-get install -y \
	git \
	vim \
	ca-certificates \
	--no-install-recommends \
 && rm -rf /var/lib/apt/lists/*
