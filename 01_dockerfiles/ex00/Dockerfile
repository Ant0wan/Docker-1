FROM alpine:latest

LABEL maintainer "abarthel <abarthel@student.42.fr>"

RUN apk update

RUN apk upgrade

RUN apk add vim

RUN mkdir /root/vim

WORKDIR /root/vim

ENTRYPOINT ["vim"]

# Display an entry menu when container start
# Comment ENTRYPOINT and uncomment CMD
#CMD ["vim", ""]

#docker run -it --rm -v $PWD:/root myvim:0 hello-world.c
