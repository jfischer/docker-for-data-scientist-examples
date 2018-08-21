#!/usr/bin/env bash

# CMD fails without --ip and --allow root flags in this location
CMD="jupyter notebook --allow-root --no-browser --ip 0.0.0.0 --port=8888 --NotebookApp.token='test'"
echo 'Starting jupyter notebook server with commmand: '$CMD
eval $CMD