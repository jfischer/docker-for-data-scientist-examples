#!/bin/bash
echo docker rm -f pydata-5-cpu-container pydata-5-gpu-container
docker rm -f pydata-5-cpu-container pydata-5-gpu-container
echo docker ps
docker ps
