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

ENTRYPOINT ["/bin/bash", "-c", "/opt/gitlab/embedded/bin/runsvdir-start &", "gitlab-ctl reconfigure"]
