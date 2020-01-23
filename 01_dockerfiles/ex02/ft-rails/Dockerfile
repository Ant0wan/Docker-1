FROM ruby:latest

LABEL maintainer "abarthel <abarthel@student.42.fr>"

RUN apt-get update && apt-get install -y \
	sqlite3 \
	nodejs \
	yarn

RUN gem install rails -v 5.2.3

RUN mkdir /opt/app

COPY ./ft-rails /opt/app

ONBUILD WORKDIR /opt/app

ONBUILD EXPOSE 3000

#ONBUILD CMD ["rake", "db:migrate"]
#ONBUILD CMD ["rake", "db:seed"]
