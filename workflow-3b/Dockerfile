FROM tensorflow/tensorflow:latest-gpu
COPY mnist-example-for-experts-gpu.ipynb /notebooks
ENV PASSWORD test

WORKDIR "/notebooks"

CMD ["/run_jupyter.sh", "--allow-root"]
