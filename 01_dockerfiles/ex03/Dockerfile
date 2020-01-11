FROM debian:buster-slim

LABEL maintainer "abarthel <abarthel@student.42.fr>"

RUN apt-get update && apt-get install -y \
	curl \
	openssh-server \
	ca-certificates \
 && curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ee/script.deb.sh --output script.deb.sh \
 && chmod +x script.deb.sh \
 && bash script.deb.sh \
 && rm script.deb.sh \
 && EXTERNAL_URL="https://gitlab.abarthel.com" apt-get install -y gitlab-ee \
