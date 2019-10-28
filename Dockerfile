FROM python:3.8.0-alpine3.10

RUN apk add --update git make
WORKDIR /opt/sample_client

COPY ./ ./
RUN make deps
CMD make run
