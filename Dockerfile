FROM python:alpine
WORKDIR /app
RUN apt update
RUN apt upgrade
RUN apt install apt-transport-https ca-certificates curl software-properties-common
RUN apt install docker-ce
RUN docker-compose up
