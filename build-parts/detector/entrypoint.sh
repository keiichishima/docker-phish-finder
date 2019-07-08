#!/bin/sh

WS_HOST=${WS_HOST:=pp-wsserver}
WS_PORT=${WS_PORT:=5678}
EXTRACTOR_PORT=${EXTRACTOR_PORT:=9999}

SLACKOPTS=
if [ "X${SLACKWEBHOOK}" != "X" ]; then
	SLACKOPTS="-slackwebhook ${SLACKWEBHOOK}"
fi
if [ "X${SLACKCHANNEL}" != "X" ]; then
	SLACKOPTS="${SLACKOPTS} -slackchannel ${SLACKCHANNEL}"
fi

cd /detector/server
python3 sniffer.py -i urldump -urldumpport ${EXTRACTOR_PORT} -wshost ${WS_HOST} -wsport ${WS_PORT} -logthresh 0.99 ${SLACKOPTS} -w whitelist.txt
