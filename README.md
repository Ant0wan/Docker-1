# Docker-1 [![42](https://i.imgur.com/9NXfcit.jpg)](i.imgur.com/9NXfcit.jpg) [![Docker](https://imgur.com/r7z0QOR.png)](imgur.com/r7z0QOR.png)

An introduction to **Docker** [a 42 project].

This project aims to learn the very basics of using Docker and Docker-machine.

---

## Description

#### 00_how_to_docker

Introduction to the Docker main options: containers, swarms and services.

`00` create a virtual machine (host) with docker-machine using the virtualbox driver and name it "Char".

`01` get the IP address of the "Char" virtual machine (host).

`02` set the Docker environment variables related to the "Char" docker-machine deamon (host).

`03` pull hello-world container image from offical repository.

`04` try out docker running a hello-world container.


#### 01_dockerfiles

Introduction to Dockerfile building containers for applications.

`ex00` vim container

`ex01` teamspeak server container

`ex02` ruby on rail app container

`ex03` gitlab-ce container

#### 02_bonus

`install_docker_Debian.sh` script installing Docker on Debian10.

`install_docker-machine_MacOS.sh` script installing Docker-machine on MacOS.

`darlinghq` darlinghq dockerfile for compiling and executing macos binaries.

`python` python3 dockerfile for running python programs.

`gcc` gcc dockerfile for compiling C programs.

`lynx` lynx terminal web browser in a container.

---

## Requirements

- OS: Debian or MacOS

- Install docker, docker-machine and virtualbox.

---

## Usage

- Clone the github repository

```shell=
git clone https://github.com/Ant0wan/Docker-1 && cd Docker-1/
```

(option) If you are using Debian (amd64):

- Run script to install Docker

```shell=
bash --posix 02_bonus/install_docker_Debian.sh
```
