#!/bin/bash

function check_brew ()
{
	printf "Install/update brew\n"
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/H/omebrew/install/master/install)"                       
	brew update
}

function clean_versions ()
{
	printf "Uninstall old versions\n"
	local arr=(docker docker-compose docker-machine)
	for i in ${arr[@]}
	do
		brew remove $i
	done
}

function install_docker ()
{
	printf "Install Docker Machine\n"
	curl -L https://github.com/docker/machine/releases/download/v0.13.0/docker-machine-`uname -s`-`uname -m` >/usr/local/bin/docker-machine && chmod +x /usr/local/bin/docker-machine
}

function list_available_versions ()
{
	printf "List available versions in repo\n"
	docker --version
}

function launch_setup ()
{
	check_brew
	clean_versions
	install_docker
	list_available_versions
}

launch_setup
