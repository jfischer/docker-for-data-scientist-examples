#!/bin/bash

if [[ "`which dws`" == "" ]]; then
    echo pip install dataworkspaces
    pip install dataworkspaces
else
    echo "Data workspaces already installed."
fi
set -e

# Download and setup the data workspace
echo dws --batch clone git@github.com:data-workspaces/buoy-data-analysis.git
dws --batch clone git@github.com:data-workspaces/buoy-data-analysis.git
echo buoy-data-analysis
cd buoy-data-analysis

# build and run the container
echo dws --batch deploy build
dws --batch deploy build
echo dws --batch deploy run
dws --batch deploy run

