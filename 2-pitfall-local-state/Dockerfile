FROM continuumio/anaconda3:latest
RUN apt-get -y -q update
RUN apt-get -y -q install vim-tiny
RUN mkdir /scripts
COPY iris_with_save.py /scripts
WORKDIR /scripts
CMD /bin/bash
