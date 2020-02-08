# Build:
#	docker build -t latex:0 .
# Usage:
#	docker run --rm -v $PWD:/root/latex latex:0 pdflatex cv.tex
#
FROM alpine:latest

LABEL maintainer "abarthel <abarthel@student.42.fr>"

RUN apk update

RUN apk upgrade

RUN apk add latex

RUN mkdir /root/latex

WORKDIR /root/latex
