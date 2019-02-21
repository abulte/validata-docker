FROM python:3

EXPOSE 5600

WORKDIR /srv

ARG VALIDATA_CORE_REPO=git+https://git.opendatafrance.net/validata/validata-core.git
ARG VALIDATA_API_REPO=git+https://git.opendatafrance.net/validata/validata-api.git

RUN pip install $VALIDATA_CORE_REPO
RUN pip install $VALIDATA_API_REPO

ENV FLASK_APP=validata_api.app
ENV FLASK_ENV=development
ENV FLASK_RUN_PORT=5600

CMD ["flask", "run", "--with-threads", "-h", "0.0.0.0"]
