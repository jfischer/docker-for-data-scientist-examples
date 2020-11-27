#!/bin/bash
set -e

echo docker pull continuumio/anaconda3
docker pull continuumio/anaconda3

echo docker build -t dds-1-run-script .
docker build -t dds-1-run-script .

echo docker run -it --rm dds-1-run-script:latest /opt/conda/bin/python /scripts/iris.py
docker run -it --rm dds-1-run-script:latest /opt/conda/bin/python /scripts/iris.py
