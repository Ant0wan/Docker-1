#!/bin/bash

function clean_versions ()
{
	printf "Uninstall old versions\n"
	local arr=(docker docker-engine docker.io containerd runc)
	for i in ${arr[@]}
	do
		apt-get remove -y $i
	done
}

function update_packages ()
{
	printf "Update the apt package index\n"
	apt-get update
}

function install_repo_tools ()
{
	printf "Install packages to allow apt to use a repository over HTTPS\n"
	local arr=(apt-transport-https ca-certificates curl gnupg2 software-properties-common)
	for i in ${arr[@]}
	do
		apt-get install -y $i
	done
}

function install_GPG_key ()
{
	printf "Add Docker’s official GPG key\n"
	local repo="https://download.docker.com/linux/debian/gpg"
	curl -fsSL $repo | apt-key add -
	local fingerp="0EBFCD88"
	apt-key fingerprint $fingerp
	printf "Should be 9DC8 5822 9FC7 DD38 854A  E2D8 8D81 803C 0EBF CD88\n"
}

function setup_stable_repository ()
{
	printf "Set up the stable repository: Debian version\n"
	local addr="https://download.docker.com/linux/debian"
       	local archi="deb [arch=amd64]"
       	add-apt-repository "$archi $addr $(lsb_release -cs) stable"

}

function install_docker ()
{
	printf "Install the latest version of Docker Engine - Community\n"
	local pkg=(docker-ce docker-ce-cli containerd.io)
	for i in ${pkg[@]}
	do
		apt-get install -y $i
	done
}

function list_available_versions ()
{
	printf "List available versions in repo\n"
	apt-cache madison docker-ce
}

function test_docker ()
{
	printf "\nTest docker with simple helllo world container\n"
	docker run hello-world
}

function launch_setup ()
{
	clean_versions
	update_packages
	install_repo_tools
	install_GPG_key
	setup_stable_repository
	update_packages
	install_docker
	#list_available_versions
	test_docker
}

launch_setup
