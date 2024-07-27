#!/bin/bash

IMAGE_NAME="rpizziol/acmeair-bookingservice-springboot"
TAG="0.15"

docker build --no-cache -t $IMAGE_NAME:$TAG . && docker push $IMAGE_NAME:$TAG
