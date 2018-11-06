FROM ubuntu:18.04

RUN DEBIAN_FRONTEND="noninteractive" apt-get update -y
RUN DEBIAN_FRONTEND="noninteractive" apt-get upgrade -y
RUN DEBIAN_FRONTEND="noninteractive" apt-get install -y python3 python3-pip libatlas-base-dev git
RUN DEBIAN_FRONTEND="noninteractive" pip3 install --user tensorflow

RUN mkdir -p /opt/tf && cd /opt/tf && git clone https://github.com/tensorflow/models.git --depth 1

WORKDIR /opt/tf/models/tutorials/image/imagenet