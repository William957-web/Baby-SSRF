FROM python:alpine
WORKDIR /app
RUN pip install flask && python main.py
