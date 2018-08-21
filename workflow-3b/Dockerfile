FROM tensorflow/tensorflow:latest-gpu-py3
RUN python3 -V  && pip install --upgrade pip

RUN pip3 install jupyter==1.0.0 \
    jupyter-contrib-nbextensions==0.5.1 \
    jupyter-nbextensions-configurator==0.4.1 \
    jupyternotify==0.1.15

# tensorflow examples no longer contained in tensorflow docker image
RUN apt-get install -y git-core
RUN git clone https://github.com/aymericdamien/TensorFlow-Examples

RUN mkdir -p /notebooks
COPY mnist-example-for-experts-gpu.ipynb /notebooks
COPY run.sh /notebooks

RUN ls -al

ENV PASSWORD test

WORKDIR /notebooks

CMD ["/run.sh", "--allow-root"]
