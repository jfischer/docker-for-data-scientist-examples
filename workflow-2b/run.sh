#!/bin/bash
set -e

echo docker pull continuumio/anaconda3
docker pull continuumio/anaconda3

echo docker build -t pybay-workflow-2b .
docker build -t pybay-workflow-2b .

echo "Entering docker shell, type \"exit\" to return back to host shell"
docker run -it --rm --userns=host -u `id -u`:`id -g` \
    -v /etc/group:/etc/group:ro -v /etc/passwd:/etc/passwd:ro \
    -v `pwd`:/host pybay-workflow-2b:latest /bin/bash
