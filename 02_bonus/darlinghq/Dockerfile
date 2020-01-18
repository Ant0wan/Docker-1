FROM debian:buster

LABEL maintainer "abarthel <abarthel@student.42.fr>"

RUN apt-get update

RUN apt install -y cmake clang bison flex xz-utils libfuse-dev libudev-dev pkg-config libc6-dev-i386 linux-headers-amd64 libcap2-bin git libcairo2-dev libgl1-mesa-dev libtiff5-dev libfreetype6-dev libxml2-dev libegl1-mesa-dev libfontconfig1-dev libbsd-dev

RUN git clone --recursive https://github.com/darlinghq/darling.git

WORKDIR darling

RUN mkdir build

WORKDIR build

# Test the build of DarlingHQ
#RUN cmake -DFULL_BUILD=OFF .. 

# Full build
RUN cmake ..

RUN make -j$(getconf _NPROCESSORS_ONLN)

RUN make install

RUN apt-get install -y kmod

RUN make lkm

RUN make lkm_install

WORKDIR /root

ENTRYPOINT ["/usr/local/bin/darling", "shell"]
