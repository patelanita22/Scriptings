#!/bin/bash

IMAGE_NAME="my-app"
TAG="v1.0"

docker build -t $IMAGE_NAME:$TAG .
docker push $IMAGE_NAME:$TAG