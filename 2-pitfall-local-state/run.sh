#!/bin/bash
set -e

echo docker pull continuumio/anaconda3
docker pull continuumio/anaconda3

echo docker build -t dds-2-pitfall-local-state .
docker build -t dds-2-pitfall-local-state .

echo docker run -it --rm dds-2-pitfall-local-state:latest /bin/bash
docker run -it --rm dds-2-pitfall-local-state:latest /bin/bash
