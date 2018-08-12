#!/bin/bash
set -e

echo docker pull continuumio/anaconda3
docker pull continuumio/anaconda3

echo docker build -t pitfall-1 .
docker build -t pitfall-1 .

echo docker run -it --rm pitfall-1:latest /bin/bash
docker run -it --rm pitfall-1:latest /bin/bash
