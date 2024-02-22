#!/bin/sh

IMAGE=finwo/minio

docker build \
  -t ${IMAGE}:latest \
  .

docker push ${IMAGE}:latest
