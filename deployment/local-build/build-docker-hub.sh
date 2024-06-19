#!/bin/bash
source docker_hub_secrets.sh
export DOCKERHUB_IMAGE=emi
export DOCKERHUB_TAG=1.1.46
export DOCKERHUB_NAMESPACE=nebulaetpiprod
export DOCKERHUB_IMAGE=emi

echo "===== Building Docker Container ======"
sudo docker build  -t $DOCKERHUB_NAMESPACE/$DOCKERHUB_IMAGE:$DOCKERHUB_TAG -t $DOCKERHUB_NAMESPACE/$DOCKERHUB_IMAGE:latest .

echo "===== Publishing Docker Container ======"
sudo docker login -u $DOCKERHUB_USER -p $DOCKERHUB_PASS
sudo docker push $DOCKERHUB_NAMESPACE/$DOCKERHUB_IMAGE:$DOCKERHUB_TAG
sudo docker push $DOCKERHUB_NAMESPACE/$DOCKERHUB_IMAGE:latest