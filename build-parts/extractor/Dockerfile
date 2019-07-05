FROM ubuntu:18.04
MAINTAINER keiichi@iijlab.net
ARG EXTRACTOR_INTERFACE=eth0
ARG EXTRACTOR_PORT=9999
ARG DETECTOR_ADDRESS=127.0.0.1

RUN apt-get update \
	&& apt-get install -y git make gcc libpcap-dev \
	&& apt-get install -y netcat

RUN mkdir /urlextractor \
	&& git clone https://github.com/keiichishima/urlextractor.git /urlextractor
WORKDIR /urlextractor
RUN make

COPY ./build-parts/extractor/entrypoint.sh /

RUN sed -i.bak "s/EXTRACTOR_INTERFACE/${EXTRACTOR_INTERFACE}/" /entrypoint.sh \
 	&& sed -i.bak "s/EXTRACTOR_PORT/${EXTRACTOR_PORT}/" /entrypoint.sh \
	&& sed -i.bak "s/DETECTOR_ADDRESS/${DETECTOR_ADDRESS}/" /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
