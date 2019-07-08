#!/bin/sh

if [ "X${WS_HOST}" == "X" ]; then
	echo "WS_HOST must be specified"
	sleep 60
	exit -1
fi

WS_PORT=${WS_PORT:=5678}

sed -i.bak "s@var uri = 'ws://127.0.0.1:5678/';@var uri = 'ws://${WS_HOST}:${WS_PORT}';@" /webserver/html/js/script.js

nginx -g "daemon off;"
