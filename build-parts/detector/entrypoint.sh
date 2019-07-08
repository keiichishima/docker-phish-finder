#!/bin/sh

WS_HOST=${WS_HOST:=pp-wsserver}
WS_PORT=${WS_PORT:=5678}
EXTRACTOR_PORT=${EXTRACTOR_PORT:=9999}

SLACK_OPTS=
if [ "X${SLACK_WEBHOOK}" != "X" ]; then
	SLACK_OPTS="-slackwebhook ${SLACK_WEBHOOK}"
fi
if [ "X${SLACK_CHANNEL}" != "X" ]; then
	SLACK_OPTS="${SLACK_OPTS} -slackchannel ${SLACK_CHANNEL}"
fi

cd /detector/server
python3 sniffer.py -i urldump -urldumpport ${EXTRACTOR_PORT} -wshost ${WS_HOST} -wsport ${WS_PORT} -logthresh 0.99 ${SLACK_OPTS} -w whitelist.txt
