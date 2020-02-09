# Build:
#	docker build -t latex:0 .
# Usage:
#	docker run --rm -v $PWD:/root/latex latex:0 pdflatex cv.tex
#
FROM ubuntu:bionic

LABEL maintainer "abarthel <abarthel@student.42.fr>"

RUN apt-get update

RUN apt-get install -y texlive texlive-formats-extra

RUN rm -rf /var/lib/apt/lists/*

RUN mkdir /root/latex

WORKDIR /root/latex
