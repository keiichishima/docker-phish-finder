#!/bin/sh

#sleep 3600

cd /detector/server
python3 sniffer.py -i urldump -t 0.99 -slackwebhook https://hooks.slack.com/services/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 -slackchannel "#alerts" -w whitelist.txt
