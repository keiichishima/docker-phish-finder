FROM ubuntu:18.04
MAINTAINER keiichi@iijlab.net

RUN apt-get update \
	&& apt-get install -y git netcat python3 python3-pip \
	&& pip3 install chainer==4.0.0 websocket-client==0.54.0 \
	&& pip3 install slackweb==1.0.5 \
	&& pip3 install scapy==2.4.0 scapy-python3==0.23 scapy-http==1.8

RUN mkdir /detector
RUN git clone -b 201812demo https://github.com/keiichishima/phish-finder.git /detector

COPY ./build-parts/detector/entrypoint.sh /

EXPOSE 9999/udp

ENTRYPOINT ["/entrypoint.sh"]
