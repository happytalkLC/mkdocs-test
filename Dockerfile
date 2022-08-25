FROM ubuntu:22.04

RUN apt update --fix-missing && apt upgrade -y
RUN apt install -y software-properties-common

ENV TZ=Asia/Seoul \
    DEBIAN_FRONTEND=noninteractive

ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8

RUN apt-get update && \
    apt-get install tzdata

RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt update
RUN apt install -y python3.8 python3-pip
RUN pip install --upgrade pip
RUN pip install mkdocs mkdocs-rtd-dropdown mkdocs-material pymdown-extensions

WORKDIR /home/mbi-api-docs/web