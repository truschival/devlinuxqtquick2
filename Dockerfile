FROM ruschi/devbusterbase:latest
MAINTAINER Thomas Ruschival <t.ruschival@gmail.com>

# Setup language environment and encoding 
ENV LC_ALL C.UTF-8
ENV LANG C.UTF-8

RUN apt-get update && \
	apt-get install -y \
	qt5-default \
	qtbase5-dev-tools \
	qtdeclarative5-dev \
	qtmultimedia5-dev \
	qtquickcontrols2-5-dev \
	qtdeclarative5-dev-tools

USER build
WORKDIR /home/build