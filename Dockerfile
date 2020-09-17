FROM python:3.8-alpine3.12

RUN mkdir /etc/curator
RUN touch /etc/curator/action.yml
RUN touch /etc/curator/curator.yml

RUN apk add bash

RUN pip3 install -U elasticsearch-curator

CMD ["curator", "--config", "/etc/curator/curator.yml", "/etc/curator/action.yml""]
