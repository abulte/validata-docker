FROM python:3

EXPOSE 5601

WORKDIR /srv

ARG VALIDATA_CORE_REPO=git+https://git.opendatafrance.net/validata/validata-core.git
ARG VALIDATA_UI_REPO=git+https://git.opendatafrance.net/validata/validata-ui.git

RUN pip install $VALIDATA_CORE_REPO
RUN pip install $VALIDATA_UI_REPO

ENV FLASK_APP=validata_ui
ENV FLASK_ENV=development
ENV FLASK_RUN_PORT=5601

CMD ["flask", "run", "--with-threads", "-h", "0.0.0.0"]
