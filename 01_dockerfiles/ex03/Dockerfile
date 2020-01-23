FROM debian:buster-slim

LABEL maintainer "abarthel <abarthel@student.42.fr>"

#USER root // seems useless

RUN apt-get update && apt-get install -y \
	curl \
	openssh-server \
	postfix \
	ca-certificates

RUN curl -sS https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | bash

RUN mkdir /etc/gitlab && touch /etc/gitlab/skip-auto-reconfigure

ENV SKIP_POST_DEPLOYMENT_MIGRATIONS=true

#RUN apt-get install gitlab-ce=11.7.5*
RUN apt-get install gitlab-ce


RUN echo "package['detect_init'] = false"\
"unicorn['worker_timeout'] = 300"\
"postgresql['shared_buffers'] = '1MB'" >> /opt/gitlab/gitlab.rb

EXPOSE 443 80 22

ENTRYPOINT ["/bin/sh", "-c", "/opt/gitlab/embedded/bin/runsvdir-start &", "gitlab-ctl reconfigure"]
