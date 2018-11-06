# Tensorflow image recognition

Simple setup with ubuntu, python3 and tensorflow. Playground or base for image recognition experiments

## build

    make build/docker

## run the container

    mkdir output
    docker run -v `pwd`/output:/tmp/output -it imagerecognition:latest /bin/bash

## run the recognition script

    /opt/tf/models/tutorials/image/imagenet# python3 classify_image.py --image_file=/tmp/output/my_image.jpg