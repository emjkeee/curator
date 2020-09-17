FROM python:3.8-alpine3.12

RUN mkdir /etc/curator
RUN touch /etc/curator/action.yml
RUN touch /etc/curator/curator.yml

RUN apk add bash

RUN pip3 install -U elasticsearch-curator

CMD ["/usr/local/bin/curator", "config", "/etc/curator/action.yml", "/etc/curator/curator.yml"]
