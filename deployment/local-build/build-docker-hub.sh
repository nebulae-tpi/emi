#!/bin/bash
source docker_hub_secrets.sh
export DOCKERHUB_IMAGE=emi
export DOCKERHUB_TAG=1.1.41
export DOCKERHUB_NAMESPACE=nebulaetpiprod
export DOCKERHUB_IMAGE=emi

echo "===== Building Docker Container ======"
docker build  -t $DOCKERHUB_NAMESPACE/$DOCKERHUB_IMAGE:$DOCKERHUB_TAG -t $DOCKERHUB_NAMESPACE/$DOCKERHUB_IMAGE:latest .

echo "===== Publishing Docker Container ======"
docker login -u $DOCKERHUB_USER -p $DOCKERHUB_PASS
docker push $DOCKERHUB_NAMESPACE/$DOCKERHUB_IMAGE:$DOCKERHUB_TAG
docker push $DOCKERHUB_NAMESPACE/$DOCKERHUB_IMAGE:latest