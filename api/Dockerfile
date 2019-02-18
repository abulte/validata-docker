FROM python:3

EXPOSE 5600

WORKDIR /srv

RUN git clone https://git.opendatafrance.net/validata/validata-core.git
RUN cd validata-core && pip install -e .
RUN git clone https://git.opendatafrance.net/validata/validata-api.git
RUN cd validata-api && pip install -e .

ENV FLASK_APP=validata_api/app.py
ENV FLASK_ENV=development
ENV FLASK_RUN_PORT=5600

WORKDIR validata-api/
CMD ["flask", "run", "--with-threads", "-h", "0.0.0.0"]
