FROM ruby:2.5

LABEL maintainer "abarthel <abarthel@student.42.fr>"

RUN apt-get update && apt-get install -y \
	nodejs \
	postgresql-client

ONBUILD COPY ./ft-rails/app /opt/app

ONBUILD WORKDIR /opt/app

ONBUILD RUN bundle install

ONBUILD EXPOSE 3000

#ONBUILD RUN rake db:migrate

#ONBUILD RUN rake db:seed
