#!/bin/sh

docker-compose build --no-cache

docker tag validata-docker_api abulte/validata-api
docker tag validata-docker_ui abulte/validata-ui

docker push abulte/validata-api
docker push abulte/validata-ui
