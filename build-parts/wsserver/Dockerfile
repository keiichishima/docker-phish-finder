FROM ubuntu:18.04
MAINTAINER keiichi@iijlab.net
ARG WS_PORT=5678

RUN apt-get update \
	&& apt-get install -y git python3 python3-pip \
	&& pip3 install websocket-server==0.4

RUN mkdir /wsserver \
	&& git clone -b 201812demo https://github.com/keiichishima/phish-finder.git /wsserver

RUN sed -i.bak "s/^WS_PORT=5678/WS_PORT=${WS_PORT}/" /wsserver/server/server.py

CMD ["/usr/bin/python3", "/wsserver/server/server.py", "-b", "all"]
