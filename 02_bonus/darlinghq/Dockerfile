FROM ubuntu:18.04

LABEL maintainer "abarthel <abarthel@student.42.fr>"

RUN apt-get update

RUN apt install -y \
	cmake \
	clang \
	bison \
	flex \
	libfuse-dev \
	libudev-dev \
	pkg-config \
	libc6-dev-i386 \
	linux-headers-generic \
	gcc-multilib \
	libcairo2-dev \
	libgl1-mesa-dev \
	libtiff5-dev \
	libfreetype6-dev \
	git \
	libelf-dev \
	libxml2-dev \
	libegl1-mesa-dev \
	libfontconfig1-dev \
	libbsd-dev

RUN git clone --recursive https://github.com/darlinghq/darling.git

WORKDIR darling

RUN mkdir build

WORKDIR build

RUN cmake ..

RUN make -j$(getconf _NPROCESSORS_ONLN)

RUN make install

RUN make lkm

RUN make lkm_install

WORKDIR ~/

ENTRYPOINT ["darling shell"]
