FROM debian:buster-slim

LABEL maintainer "abarthel <abarthel@student.42.fr>"

ENV FQDN="gitlab.abarthel.com"

RUN apt-get update && apt-get install -y \
	curl \
	openssh-server \
	ca-certificates \
	letsencrypt \
	postfix

RUN curl -sS https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | bash

RUN apt-get install -y gitlab-ce

RUN letsencrypt certonly -d $FQDN \
 && mkdir -p /etc/gitlab/ssl/ \
 && openssl dhparam -out /etc/gitlab/ssl/dhparams.pem 2048 \
 && chmod 600 /etc/gitlab/ssl/*

RUN echo -e "external_url 'https://$FQDN'\n" "nginx['redirect_http_to_https'] = true\n" "nginx['ssl_certificate'] = '/etc/letsencrypt/live/gitlab.hakase-labs.co/fullchain.pem'\n" "nginx['ssl_certificate_key'] = '/etc/letsencrypt/live/gitlab.hakase-labs.co/privkey.pem'\n" "nginx['ssl_dhparam'] = '/etc/gitlab/ssl/dhparams.pem'" >> /etc/gitlab/gitlab.rb

RUN gitlab-ctl reconfigure
