FROM ubuntu:21.04
LABEL org.opencontainers.image.authors="andreas@sauerwein.se"
RUN apt-get update -y
RUN apt-get install -y python3-pip python3-dev build-essential
COPY . /app
WORKDIR /app
EXPOSE 5000/tcp
RUN pip3 install -r requirements.txt
ENTRYPOINT ["python3"]
CMD ["app.py"]
