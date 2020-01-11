FROM debian:buster-slim

LABEL maintainer "abarthel <abarthel@student.42.fr>"

RUN apt-get update && apt-get install -y \
	curl \
	openssh-server \
	ca-certificates

RUN curl -sS https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | bash

RUN apt-get install -y gitlab-ce

EXPOSE 443 80 22

ENTRYPOINT ["gitlab-ctl reconfigure"]
