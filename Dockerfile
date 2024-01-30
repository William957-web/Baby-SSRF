FROM python:alpine
WORKDIR /app
RUN apt-get update
RUN apt-get install apt-transport-https ca-certificates curl software-properties-common
RUN apt-get install docker-ce
RUN docker-compose up
