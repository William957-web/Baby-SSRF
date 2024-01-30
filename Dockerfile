FROM python:3.9
WORKDIR /app
COPY . /app
RUN rm /app/Dockerfile
RUN pip3 install flask
RUN echo "ICED{R4HHHHH_Y0U_C_m3_!_}">>/flag
ENTRYPOINT [ "python3" ]
CMD ["main.py" ]
