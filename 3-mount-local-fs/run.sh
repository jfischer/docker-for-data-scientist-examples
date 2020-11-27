#!/bin/bash
set -e

echo docker pull continuumio/anaconda3
docker pull continuumio/anaconda3

echo docker build -t dds-3-mount-local-fs .
docker build -t dds-3-mount-local-fs .

echo "Entering docker shell, type \"exit\" to return back to host shell"
echo docker run -it --rm -v `pwd`:/host dds-3-mount-local-fs:latest /bin/bash
docker run -it --rm -v `pwd`:/host dds-3-mount-local-fs:latest /bin/bash
