FROM debian

LABEL maintainer "abarthel <abarthel@student.42.fr>"

ENV TS_SHA256=d4262f0d51e682c0c645b36c196ad32dae99a1345420cfad00d52f2af109870d

RUN apt-get update && apt-get install -y \
	wget \
	bzip2 \
 && wget https://files.teamspeak-services.com/releases/server/3.10.2/teamspeak3-server_linux_amd64-3.10.2.tar.bz2 \
 && if [ "$(sha256sum teamspeak3-server_linux_amd64-3.10.2.tar.bz2 | cut -d ' ' -f1)" = "$TS_SHA256" ] ; then echo TOTO ; fi \
 && tar -xvf teamspeak3-server_linux_amd64-3.10.2.tar.bz2 \
 && rm teamspeak3-server_linux_amd64-3.10.2.tar.bz2 \
 && cd teamspeak3-server_linux_amd64 \
 && touch .ts3server_license_accepted \
 && rm -rf /var/lib/apt/lists/*

WORKDIR teamspeak3-server_linux_amd64

ENTRYPOINT sh ts3server_minimal_runscript.sh 

