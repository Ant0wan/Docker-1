FROM ubuntu

MAINTAINER abarthel <abarthel@student.42.fr>

RUN apt-get update && apt-get install -y \
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
	libbsd-dev \
 && git clone --recursive https://github.com/darlinghq/darling.git \
 && cd darling \
 && mkdir build \
 && cd build \
 && cmake .. \
 && make \
 && make install \
 && make lkm \
 && sudo make lkm_install

ENTRYPOINT darling shell
