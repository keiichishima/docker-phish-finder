FROM nginx:alpine
MAINTAINER keiichi@iijlab.net
ARG WSSERVER_URL=ws://127.0.0.1:5678

RUN apk update \
	&& apk add git

RUN mkdir /phish-finder \
	&& git clone -b 201812demo https://github.com/keiichishima/phish-finder.git /phish-finder

COPY build-parts/webserver/default.conf /etc/nginx/conf.d/default.conf
RUN sed -i.bak "s@var uri = 'ws://127.0.0.1:5678/';@var uri = '${WSSERVER_URL}';@" /phish-finder/html/js/script.js
