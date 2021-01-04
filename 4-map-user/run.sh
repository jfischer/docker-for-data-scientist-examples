set -e

echo -n  "Checking this is Linux..."
if [ `uname` = Linux ]; then
  echo 'ok'
else
  echo 'no'
  echo "This is for Docker on Linux only!"
  echo "User mapping is not needed for Docker for Mac"
  exit 1
fi

echo docker pull continuumio/anaconda3
docker pull continuumio/anaconda3

echo docker build -t dds-4-map-user .
docker build -t dds-4-map-user .

echo "Entering docker shell, type \"exit\" to return back to host shell"
echo docker run -it --rm -v `pwd`:/host -u `id -u`:`id -g` dds-4-map-user:latest /bin/bash
docker run -it --rm -v `pwd`:/host -u `id -u`:`id -g` dds-4-map-user:latest /bin/bash
