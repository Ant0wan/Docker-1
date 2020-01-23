#!/bin/sh
docker build -t myts:0 .
docker run --rm -p 9987:9987/udp -p 10011:10011 -p 30033:30033 myts:0 serveradmin_password=Kerrigan
