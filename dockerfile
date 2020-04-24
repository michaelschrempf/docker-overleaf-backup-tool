FROM python:3

ENV username=user
ENV password=pass
ENV folder=folder

RUN mkdir /backup
WORKDIR /backup-tool

COPY script.sh ./

RUN pip install overleaf-sync