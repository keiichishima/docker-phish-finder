#!/bin/sh

WS_PORT=${WS_PORT:=5678}

cd /wsserver/server
python3 server.py -wshost all -wsport ${WS_PORT}
