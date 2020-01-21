FROM ruby:2.5.5

LABEL maintainer "abarthel <abarthel@student.42.fr>"

RUN apt-get update && apt-get install -y \
	nodejs \
	postgresql-client

COPY ./app /opt/app

WORKDIR /opt/app

RUN gem install bundler

RUN bundle install

#RUN gem install rails

ONBUILD EXPOSE 3000

ENTRYPOINT ["/bin/sh"]

#ONBUILD RUN rake db:migrate

#ONBUILD RUN rake db:seed
