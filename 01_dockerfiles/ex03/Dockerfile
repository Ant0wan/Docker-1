# Build:
#	docker build -t mygitlab:0 .
# Usage:
#	docker run -it \
#	  --privileged \
#	  --publish 8443:443 --publish 8080:80 --publish 8022:22 \
#	  --name mygitlab \
#	  --restart always \
#	  --volume $PWD/gitlab/config:/etc/gitlab \
#	  --volume $PWD/gitlab/logs:/var/log/gitlab \
#	  --volume $PWD/gitlab/data:/var/opt/gitlab \
#	  mygitlab:0
#
FROM ubuntu:bionic

LABEL maintainer "abarthel <abarthel@student.42.fr>"

RUN apt-get update -q \
 && DEBIAN_FRONTEND=noninteractive apt-get install -yq --no-install-recommends \
	curl \
	openssh-server \
	tzdata \
	gnupg \
	ca-certificates \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /

RUN echo "Europe/Paris" | tee /etc/timezone \
 && dpkg-reconfigure --frontend noninteractive tzdata

RUN curl -sS https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | bash

RUN apt-get install gitlab-ce

EXPOSE 443 80 22

ENTRYPOINT (/opt/gitlab/embedded/bin/runsvdir-start &) && gitlab-ctl reconfigure && tail -f /dev/null
