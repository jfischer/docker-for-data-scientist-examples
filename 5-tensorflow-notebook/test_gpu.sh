
# test the nvidia-docker install

docker run --rm --gpus all nvidia/cuda:11.0-base nvidia-smi
