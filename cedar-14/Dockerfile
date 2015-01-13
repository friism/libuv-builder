FROM ubuntu:trusty
MAINTAINER friism

RUN apt-get -q update \
    && apt-get -q -y install \
    autoconf \
    automake \
    build-essential \
    libtool \
    unzip \
    wget

RUN wget -q https://github.com/rlmcpherson/s3gof3r/releases/download/v0.3.0/gof3r_linux_amd64_binary.zip
RUN unzip gof3r_linux_amd64_binary.zip
RUN mv gof3r_linux_amd64_binary/gof3r .
RUN rm -rf gof3r_linux_amd64_binary*

COPY build.sh build.sh
CMD ./build.sh

