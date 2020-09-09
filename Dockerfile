FROM python:3.8-alpine3.12

RUN mkdir /etc/curator
ADD config/action.yml /etc/curator
ADD config/curator.yml /etc/curator

RUN apk add bash

RUN pip3 install -U elasticsearch-curator
