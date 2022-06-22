FROM ubuntu:jammy
#FROM python:3.10
WORKDIR /
RUN apt update && apt upgrade -y
RUN apt install wget -y
RUN apt install python3-pip -y
RUN wget -O playit https://playit.gg/downloads/playit-0.8.3-beta
RUN chmod +x playit
COPY main.py main.py

CMD 'python3' 'main.py'

#CMD ["playit -c /data/config.toml"]