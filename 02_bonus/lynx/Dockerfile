FROM debian:buster

LABEL maintainer "abarthel <abarthel@student.42.fr>"

RUN apt-get update && apt-get install -y \
	ca-certificates \
	lynx \
	--no-install-recommends \
 && rm -rf /var/lib/apt/lists/*

ENV TERM=$TERM

ENTRYPOINT ["lynx"]
