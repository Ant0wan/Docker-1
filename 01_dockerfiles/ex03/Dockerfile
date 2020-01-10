FROM debian:buster-slim

LABEL maintainer "abarthel <abarthel@student.42.fr>"

RUN apt-get update && apt-get install -y \
	wget \
	openssh-server \
	ca-certificates \
	postfix \
 && wget https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh
 && chmod +x script.deb.sh
 && ./script.deb.sh
 && apt-get install -y gitlab-ce

