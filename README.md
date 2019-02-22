# validata-docker

Dockerfiles for https://git.opendatafrance.net/validata.

## Quickstart

```
git clone https://github.com/abulte/validata-docker
cd validata-docker
docker-compose up
```

This will bring up both `validata-ui` (`http://localhost:5601`) and `validata-api` (`http://localhost:5600`).

## Environment

`FLASK_ENV` variable is used, it is set by default to `FLASK_ENV=development` for both services.

## Build arguments

Arguments are available at build time to customize the pip package/repo used when installing validata components.

```
VALIDATA_CORE_REPO=git+https://git.opendatafrance.net/validata/validata-core.git
VALIDATA_API_REPO=git+https://git.opendatafrance.net/validata/validata-api.git
VALIDATA_UI_REPO=git+https://git.opendatafrance.net/validata/validata-ui.git
```
