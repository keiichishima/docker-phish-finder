#!/bin/sh

#sleep 3600

${INTERFACE:=eth0}
${DETECTOR_ADDRESS:=127.0.0.1}

/urlextractor/urlextractor -i ${INTERFACE} | /bin/nc -u ${DETECTOR_ADDRESS} 9999
