#!/bin/sh

#sleep 3600

/urlextractor/urlextractor -i EXTRACTOR_INTERFACE | /bin/nc -u DETECTOR_ADDRESS EXTRACTOR_PORT
