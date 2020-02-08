# Build:
#	docker build -t latex:0 .
# Usage:
#	docker run --rm -v $PWD:/root/latex latex:0 pdflatex cv.tex
#
FROM alpine:edge

LABEL maintainer "abarthel <abarthel@student.42.fr>"

RUN apk update

RUN apk upgrade

RUN apk add texlive

RUN mkdir /root/latex

WORKDIR /root/latex
