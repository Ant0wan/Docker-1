#!/bin/sh
apt-get update && \
	apt-get install -y sqlite3 nodejs yarn && \
	gem install rails -v 5.2.3 && \
	cd /opt/app && \
	rails new app
