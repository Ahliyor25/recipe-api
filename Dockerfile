FROM python:3.13-rc-alpine3.17
MAINTAINER  ahliyor25

# Copy the current directory contents into the container at /app
ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt

RUN  pip install -r requirements.txt

RUN mkdir /app

WORKDIR /app

COPY ./app /app


RUN adduser -D user
USER user



