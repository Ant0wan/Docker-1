# Build:
#	docker build -t mypy:0 .
#
# Usage:
#	docker run --rm -it \
#		-v $PWD:/usr/src/app \
#		mypy:0
#
FROM alpine:latest

WORKDIR /usr/src/app

RUN apk update && apk upgrade

RUN apk add --no-cache py3-setuptools

CMD ["python3"]
