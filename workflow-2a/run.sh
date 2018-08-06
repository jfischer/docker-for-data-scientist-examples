#!/bin/bash
set -e

echo docker pull continuumio/anaconda3
docker pull continuumio/anaconda3

echo docker build -t pybay-workflow-2a .
docker build -t pybay-workflow-2a .

echo "Entering docker shell, type \"exit\" to return back to host shell"
echo docker run -it --rm -v `pwd`:/host pybay-workflow-2a:latest /bin/bash
docker run -it --rm -v `pwd`:/host pybay-workflow-2a:latest /bin/bash
