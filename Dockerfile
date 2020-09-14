FROM python:3.8-alpine3.12

RUN mkdir /etc/curator
RUN touch /etc/curator/action.yml
RUN touch /etc/curator/config.yml

RUN apk add bash

RUN pip3 install -U elasticsearch-curator

CMD ["ping", "127.0.0.7"]
