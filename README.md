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

### Opening the GUI to the prod instance

You can find the GUI for the running prod instance at <>.

## Developer Guide

### Opening the GUI to the local instance

You can open the Graphite GUI at <http://localhost>.

### Posting a metric to the local instance

You can post a metric using `nc`.

```shell
echo "deploys.test.skilljar.time:55|ms" | nc -w 1 -u localhost 8125
```

## Maintainer's Guide

### Deploying

#### Prerequisites

Before deploying, you'll need to add the correct AWS environment variables. Follow
[these steps](https://skilljar.atlassian.net/wiki/spaces/ENG/pages/1099465424/Accessing+AWS+Accounts+w+SSO+VPN+Apps#Launch-a-Session-for-an-AWS-Account)

#### Running the script

You can deploy this to our ECR cluster using the deploy script. This takes more than 5 minutes for me.

```shell
./deploy.sh
```

You'll get a prompt that asks you

```shell
? Create a Docker context using
```

Choose

```shell
AWS environment variables
```

## Troubleshooting

### denied: requested access to the resource is denied

The full error message is:

```shell
Error response from daemon: pull access denied for graphiteapp/docker-graphite-statsd, repository does not exist or may require 'docker login': denied: requested access to the resource is denied
```

To resolve this, log in via the Docker GUI and then run `docker login`.
