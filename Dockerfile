FROM python:alpine
WORKDIR /app
COPY . /app
RUN rm /app/Dockerfile
RUN pip3 install flask && python main.py
