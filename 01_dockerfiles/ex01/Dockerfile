FROM debian:buster-slim

LABEL maintainer "abarthel <abarthel@student.42.fr>"

ENV TS_SHA256="d4262f0d51e682c0c645b36c196ad32dae99a1345420cfad00d52f2af109870d"

ENV TS_VERSION="3.10.2"

RUN apt-get update && apt-get install -y \
	wget \
	bzip2 \
 && rm -rf /var/lib/apt/lists/*

RUN wget https://files.teamspeak-services.com/releases/server/${TS_VERSION}/teamspeak3-server_linux_amd64-${TS_VERSION}.tar.bz2

RUN if [ "$(sha256sum teamspeak3-server_linux_amd64-${TS_VERSION}.tar.bz2 | cut -d ' ' -f1)" = "$TS_SHA256" ] ; then tar -xvf teamspeak3-server_linux_amd64-${TS_VERSION}.tar.bz2; else exit 42 ; fi

RUN rm teamspeak3-server_linux_amd64-3.10.2.tar.bz2 \
 && cd teamspeak3-server_linux_amd64 \
 && touch .ts3server_license_accepted

WORKDIR teamspeak3-server_linux_amd64

ENTRYPOINT ["/bin/sh", "ts3server_minimal_runscript.sh"]
