#!/usr/bin/env bash

docker context create ecs sjecscontext
docker context use sjecscontext
docker compose up