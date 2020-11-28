#!/bin/bash
set -e
if [[ "$1" == "gpu" ]]; then
  echo IMAGE=tensorflow/tensorflow:nightly-gpu-jupyter
  IMAGE=tensorflow/tensorflow:nightly-gpu-jupyter
  echo CONTAINER=pydata-5-gpu-container
  CONTAINER=pydata-5-gpu-container
else  
  echo IMAGE=tensorflow/tensorflow:nightly-py3-jupyter
  IMAGE=tensorflow/tensorflow:nightly-py3-jupyter
  echo CONTAINER=pydata-5-cpu-container
  CONTAINER=pydata-5-cpu-container
fi

echo docker pull \$IMAGE
docker pull $IMAGE

echo docker run -d -p 8888:8888 -u \`id -u\`:\`id -g\` --name \$CONTAINER \$IMAGE
docker run -d -p 8888:8888 -u `id -u`:`id -g` -v `pwd`:/tf/5a-tensorflow-data --name $CONTAINER $IMAGE
echo docker logs -f \$CONTAINER
docker logs -f $CONTAINER
