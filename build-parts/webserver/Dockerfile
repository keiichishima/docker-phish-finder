FROM nginx:alpine
MAINTAINER keiichi@iijlab.net

RUN apk update \
	&& apk add git

RUN git clone https://github.com/keiichishima/phish-finder.git /webserver

COPY build-parts/webserver/default.conf /etc/nginx/conf.d/default.conf
COPY build-parts/webserver/entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
