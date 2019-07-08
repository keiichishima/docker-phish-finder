FROM ubuntu:18.04
MAINTAINER keiichi@iijlab.net

RUN apt-get update \
	&& apt-get install -y git make gcc libpcap-dev \
	&& apt-get install -y netcat

RUN git clone https://github.com/keiichishima/urlextractor.git /urlextractor
WORKDIR /urlextractor
RUN make

COPY ./build-parts/extractor/entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
