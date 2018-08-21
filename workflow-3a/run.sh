#!/bin/bash
set -e

echo docker pull tensorflow/tensorflow
docker pull tensorflow/tensorflow

mkdir notebooks

echo docker build -t pybay-workflow-3a .
docker build -t pybay-workflow-3a .

echo docker run -d -p 8888:8888 --name workflow-3a-container pybay-workflow-3a:latest 
docker run -d -p 8888:8888 --name workflow-3a-container pybay-workflow-3a:latest 
