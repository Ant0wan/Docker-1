# Build:
#	docker build -t lynx:0 .
#
# Usage:
# 	docker run --rm -it \
#		--name lynx \
#		lynx:0 www.google.com
#
FROM ubuntu:bionic

LABEL maintainer "abarthel <abarthel@student.42.fr>"

RUN apt-get update && apt-get install -y \
	ca-certificates \
	lynx \
	--no-install-recommends \
 && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["lynx"]
