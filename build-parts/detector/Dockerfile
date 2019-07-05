FROM ubuntu:18.04
MAINTAINER keiichi@iijlab.net
ARG WS_PORT=5678
ARG EXTRACTOR_PORT=9999

RUN apt-get update \
	&& apt-get install -y git netcat python3 python3-pip \
	&& pip3 install chainer==4.0.0 websocket-client==0.54.0 \
	&& pip3 install slackweb==1.0.5 \
	&& pip3 install scapy==2.4.0 scapy-python3==0.23 scapy-http==1.8

RUN mkdir /detector \
	&& git clone -b 201812demo https://github.com/keiichishima/phish-finder.git /detector

RUN sed -i.bak "s@WEBSOCKET_SERVER_URL='ws://127.0.0.1:5678'@WEBSOCKET_SERVER_URL='ws://pp-wsserver:${WS_PORT}'@" /detector/server/sniffer.py
RUN sed -i.bak "s@EXTRACTOR_PORT=9999@EXTRACTOR_PORT=${EXTRACTOR_PORT}@" /detector/server/sniffer.py

COPY ./build-parts/detector/entrypoint.sh /

EXPOSE ${EXTRACTOR_PORT}/udp

ENTRYPOINT ["/entrypoint.sh"]
