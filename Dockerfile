FROM python:3.9
WORKDIR /app
COPY . /app
RUN rm /app/Dockerfile
RUN pip3 install flask
ENTRYPOINT [ "python3" ]
CMD ["main.py" ]
