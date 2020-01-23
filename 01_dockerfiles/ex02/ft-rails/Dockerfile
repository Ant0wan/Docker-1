FROM ruby:latest

LABEL maintainer "abarthel <abarthel@student.42.fr>"

RUN apt-get update && apt-get install -y \
	sqlite3 \
	nodejs \
	yarn \
	git 
# && rm -rf /var/lib/apt/lists/*

RUN gem install rails

#RUN gem install yarn
#RUN gem install git
#RUN gem update

#COPY ./app /opt/app

#WORKDIR /opt/app

#RUN gem install bundler
#RUN bundle install

ONBUILD EXPOSE 3000

#ONBUILD CMD ["rake", "db:migrate"]
#ONBUILD CMD ["rake", "db:seed"]
