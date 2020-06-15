FROM python:3.7-alpine
LABEL maintainer="Siddhant Kaushal Pvt Ltd"

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN apk add --no-cache bash

RUN adduser -D user
USER user