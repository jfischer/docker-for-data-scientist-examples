
VENV=`pwd`/venv
PIP="$VENV/bin/pip"
DWS="$VENV/bin/dws"

if [ "$1" = "-f" ]; then
  echo "will force rebuild of images"
  FORCE="-f"
else
  FORCE=""
fi

# we need to installed dataworkspaces to bootstrap things
if [ ! -f "$VENV" ]; then
  echo "Creating virtual environment at $VENV"
  echo python3 -m venv $VENV
  python3 -m venv $VENV
fi
  
if [ ! -f "$DWS" ]; then
    echo $PIP install dataworkspaces
    $PIP install dataworkspaces
else
    echo "Data workspaces already installed."
fi
set -e
# activate this virtualenvironment and check for dws"
. "$VENV/bin/activate"
if [ "`which dws`" = "" ]; then
  echo "Did not find dws!"
  exit 1
fi

# Download and setup the data workspace
echo "Cloning the workspace's repo"
echo "$DWS" --batch clone git@github.com:data-workspaces/buoy-data-analysis.git
"$DWS" --batch clone git@github.com:data-workspaces/buoy-data-analysis.git
echo buoy-data-analysis
cd buoy-data-analysis

# build and run the container
echo "Building a container"
echo "$DWS" --batch deploy build $FORCE
"$DWS" --batch deploy build $FORCE

echo "Running the workspace in a container"
echo "$DWS" --batch deploy run --no-mount-ssh-keys
"$DWS" --batch deploy run --no-mount-ssh-keys

