#!/bin/sh

#sleep 3600

cd /detector/server
sed -i.bak "s@WEBSOCKET_SERVER_URL='ws://127.0.0.1:5678'@WEBSOCKET_SERVER_URL='ws://pp-wsserver:5678'@" sniffer.py
python3 sniffer.py -i urldump -t 0.99 -slackwebhook https://hooks.slack.com/services/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 -slackchannel "#alerts" -w whitelist.txt
