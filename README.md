# Dockerized Phish Finder

This is a docker-component package for [Phish Finder](https://github.com/keiichishima/phish-finder).

## Configuration

You need to define configuration parameters in the `phish-finder.env` file.  The sample configuration file is provided as `phish-finder.env.sample`.

- `DETECTOR_ADDRESS` (Default: `127.0.0.1`): The IP address that the `pp-detector` service is running.  This address is used by the `pp-extractor` service.  This value is necessafy only when you use `pp-extractor` as URL extractor.

- `SLACK_WEBHOOK`: If you want a notification message to your Slack project, set your Slack Webhook URL here.

- `SLACK_CHANNEL`: The channel name of your Slack (e.g. `#alerts`)

- `WS_HOST`: The IP address of the Websocket server `pp-wsserver` service.  If you want to provide a web viewer, then this address must be an address that is reachable from web clients.

- `WS_PORT` (Default: `5678`): The port # of the Websocker server.

- `EXTRACTOR_INTERFACE`: The phishcal network interface name of the `pp-extractor` service.

- `EXTRACTOR_PORT` (Default: `9999`): The port # that the source/destination IP addresses and URL information extracted by the `pp-extractor` service is sent.  The information is sent to the UDP port of the `DETECTOR_ADDRESS` node.


## Run

Simply execute `docker-compose up -d`.
