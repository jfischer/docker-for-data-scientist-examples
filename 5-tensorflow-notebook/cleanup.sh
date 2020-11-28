#!/bin/bash
echo docker rm -f dds-5-cpu-container dds-5-gpu-container
docker rm -f dds-5-cpu-container dds-5-gpu-container
echo docker ps
docker ps
