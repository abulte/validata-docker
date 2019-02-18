FROM python:3

EXPOSE 5601

WORKDIR /srv

RUN git clone https://git.opendatafrance.net/validata/validata-core.git
RUN cd validata-core && pip install -e .
RUN git clone https://git.opendatafrance.net/validata/validata-ui.git
RUN cd validata-ui && pip install -e .

ENV FLASK_APP=validata_ui
ENV FLASK_ENV=development
ENV FLASK_RUN_PORT=5601

WORKDIR validata-ui/
CMD ["flask", "run", "--with-threads", "-h", "0.0.0.0"]
