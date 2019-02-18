# validata-docker

Dockerfiles for https://git.opendatafrance.net/validata.

## Quickstart

```
git clone https://github.com/abulte/validata-docker
docker-compose up
```

This will bring up both `validata-ui` (`http://localhost:5601`) and `validata-api` (`http://localhost:5600`).

## Environment

`FLASK_ENV` variable is used, it is set by default to `FLASK_ENV=development` for both services.
