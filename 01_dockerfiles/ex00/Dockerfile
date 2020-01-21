FROM alpine:latest

LABEL maintainer "abarthel <abarthel@student.42.fr>"

RUN apk update

RUN apk upgrade

RUN apk add vim

RUN mkdir /root/vim

WORKDIR /root/vim

ENTRYPOINT ["vim"]
