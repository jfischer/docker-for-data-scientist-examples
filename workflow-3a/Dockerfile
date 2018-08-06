FROM tensorflow/tensorflow:latest
COPY mnist-example-for-experts.ipynb /notebooks
ENV PASSWORD test

WORKDIR "/notebooks"

CMD ["/run_jupyter.sh", "--allow-root"]
