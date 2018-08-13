#!/bin/bash
set -e

echo docker pull tensorflow/tensorflow
docker pull tensorflow/tensorflow

echo docker build -t pybay-workflow-3a .
docker build -t pybay-workflow-3a .

echo -n "Please enter a password for Jupyter:"
read -s PASSWORD
echo
echo docker run -d -p 8888:8888 --env PASSWORD=***** --name workflow-3a-container pybay-workflow-3a:latest 
docker run -d -p 8888:8888 --env PASSWORD=$PASSWORD --name workflow-3a-container pybay-workflow-3a:latest 
