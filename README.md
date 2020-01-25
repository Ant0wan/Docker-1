# Docker-1 [![42](https://i.imgur.com/9NXfcit.jpg)](i.imgur.com/9NXfcit.jpg) [![Docker](https://imgur.com/r7z0QOR.png)](imgur.com/r7z0QOR.png)

An introduction to **Docker** [a 42 project].

This project aims to learn the very basics of using Docker and Docker-machine.

---

## Description

### 00_how_to_docker

Introduction to the Docker main options: containers, swarms and services.

- `00` create a virtual machine (host) with docker-machine using the virtualbox driver and name it "Char".

- `01` get the IP address of the "Char" virtual machine (host).

- `02` set the Docker environment variables related to the "Char" docker-machine deamon (host).

- `03` pull hello-world container image from offical repository.

- `04` try out docker running a hello-world container.

- `05` run an nginx container in background, named "overlord", restarting on its own, with port 80 attached to the port 5000 the "Char" host.

- `06` get the internal IP address of the overlord container.

- `07` launch sh in an Apline container.

- `08` setup a debian container with build-essentials.

- `09` create a volume named "hatchery".

- `10` list volumes.

- `11` run a mysql container in background named "spawning-pool", restarting on its own in case of error, with mysql root password "Kerrigan" and stored in the hatchery volume in a database named zerglings.

- `12` display environment variables the "spawning-pool".

- `13` run a wordpress container in background, named "lair", with port 80 bound to host port 8080, using the "spawning-pool" container database.

### 01_dockerfiles

Introduction to Dockerfile building containers for applications.

- `ex00` a vim container dockerfile.

- `ex01` a teamspeak server container dockerfile.

- `ex02` a ruby on rail app container with a script to build ruby on rails app.

- `ex03` a gitlab-ce container dockerfile.

### 02_bonus

- `install_docker_Debian.sh` a script installing Docker on Debian10.

- `install_docker-machine_MacOS.sh` a script installing Docker-machine on MacOS (deprecated).

- `darlinghq` a DarlingHQ dockerfile for compiling (need Xcode) and executing MacOS binaries.

- `python` a Python3 dockerfile for running Python programs.

- `gcc` a GCC dockerfile for compiling C programs.

- `lynx` a lynx terminal web browser in a container.

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

## Install (optionnal)

If you are using Debian (amd64):

- Run script as root to install Docker

```shell=
bash --posix 02_bonus/install_docker_Debian.sh
```
