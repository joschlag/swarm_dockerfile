FROM ubuntu:24.04

RUN apt update && \
	apt upgrade -y && \
	apt install -y git make g++ && \
	apt clean

WORKDIR /usr/src

RUN git clone https://github.com/torognes/swarm.git && \
	cd swarm/ && \
	git reset --hard 39b961c103f3bca698a51e320279e65dc29dee8e && \
	make

ENV PATH=${PATH}:/usr/src/swarm/bin
