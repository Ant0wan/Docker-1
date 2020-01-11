FROM ruby

LABEL maintainer "abarthel <abarthel@student.42.fr>"

RUN apt-get update -y && apt-get install -y \
	sqlite3 \
	libsqlite3-dev

ONBUILD RUN gem install rails bundler1.3

ONBUILD COPY app /opt/app

ONBUILD WORKDIR /opt/app

ONBUILD RUN bundle install

ONBUILD RUN rake db:migrate

ONBUILD RUN rake db:seed
