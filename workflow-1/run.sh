#!/bin/bash
set -e

echo docker pull continuumio/anaconda3
docker pull continuumio/anaconda3

echo docker build -t pybay-workflow-1 .
docker build -t pybay-workflow-1 .

echo docker run -it --rm pybay-workflow-1:latest /bin/bash
docker run -it --rm pybay-workflow-1:latest /opt/conda/bin/python /scripts/iris.py
