# Docker-1 [![42](https://i.imgur.com/9NXfcit.jpg)](i.imgur.com/9NXfcit.jpg) [![42](https://imgur.com/r7z0QOR)](imgur.com/r7z0QOR)

An introduction to **Docker** [a 42 project].

This project aims to learn the very basics of using Docker and Docker-machine.

---

## Description

#### 00_how_to_docker

Introduction to the Docker main options: containers, swarms and services.

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

`go` go dockerfile for writing, compiling and running go programs.

`gcc` gcc dockerfile for compiling C programs.

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
