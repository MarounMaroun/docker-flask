FROM ubuntu:latest

LABEL maintainer="maroun.bassam@gmail.com"

RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential vim

COPY . /hello_world
WORKDIR /hello_world

EXPOSE 8003

RUN pip install -r requirements.txt
ENTRYPOINT ["sh", "gunicorn_starter"]
