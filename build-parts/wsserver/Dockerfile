FROM ubuntu:18.04
MAINTAINER keiichi@iijlab.net

RUN apt-get update \
	&& apt-get install -y git python3 python3-pip \
	&& pip3 install websocket-server==0.4

RUN git clone https://github.com/keiichishima/phish-finder.git /wsserver

COPY /build-parts/wsserver/entrypoint.sh /


ENTRYPOINT ["/entrypoint.sh"]
