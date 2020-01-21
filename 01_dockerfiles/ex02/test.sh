#!/bin/sh
cd ft-rails && docker build -t ft-rails:on-build .
cd .. && docker build -t myapp:0 .
#docker run --rm -p 3000:3000 myapp:0 ex02
