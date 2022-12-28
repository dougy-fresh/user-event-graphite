# User Event Graphite

This repository is the Skilljar user event service.

You can find out more in [the docs](https://skilljar.atlassian.net/wiki/spaces/~237849251/pages/1348862018/User+Eventing+Service).

## Getting started

First thing, you'll need to [install Docker](https://docs.docker.com/get-docker/).

Next, start the user event service.

```shell
docker compose up
```

## User Guide

### Opening the GUI

You can open the Graphite GUI at <http://localhost>.

### Testing

You can post a metric using `nc`.

```shell
echo "deploys.test.skilljar.time:55|ms" | nc -w 1 -u localhost 8125
```

## Troubleshooting

### denied: requested access to the resource is denied

The full error message is:

```shell
Error response from daemon: pull access denied for graphiteapp/docker-graphite-statsd, repository does not exist or may require 'docker login': denied: requested access to the resource is denied
```

To resolve this, log in via the Docker GUI and then run `docker login`.
