#!/bin/sh
#Build the ruby on rails app
docker run --rm -it -p 3000:3000 -v $PWD/ft-rails/:/opt/app ruby "/bin/sh /opt/app/build_app.sh"

#cd ft-rails && docker build -t ft-rails:on-build .
#cd .. && docker build -t myapp:0 .
#docker run --rm -p 3000:3000 myapp:0 ex02
