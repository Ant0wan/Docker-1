# Build:
#	docker build -t myvim:0 .
#
# Usage:
#	docker run -it --rm -v $PWD:/root/vim myvim:0 hello-world.c
#
FROM alpine:latest

LABEL maintainer "abarthel <abarthel@student.42.fr>"

RUN apk update

RUN apk upgrade

RUN apk add vim

RUN mkdir /root/vim

WORKDIR /root/vim

ENTRYPOINT ["vim"]
