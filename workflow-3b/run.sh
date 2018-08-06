#!/bin/bash
set -e

echo docker pull tensorflow/tensorflow
docker pull tensorflow/tensorflow:latest-gpu

echo docker build -t pybay-workflow-3b .
docker build -t pybay-workflow-3b .

echo nvidia-docker run -d -p 8888:8888 --name workflow-3b-container pybay-workflow-3b:latest 
nvidia-docker run -d -p 8888:8888 --name workflow-3b-container pybay-workflow-3b:latest 

echo "Running nvidia-smi inside of container: it should detect the GPU(s)"
echo nvidia-docker exec -it workflow-3b-container nvidia-smi
nvidia-docker exec -it workflow-3b-container nvidia-smi

