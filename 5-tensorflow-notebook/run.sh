set -e
if [ "$1" = "gpu" ]; then
  echo IMAGE=tensorflow/tensorflow:nightly-gpu-jupyter
  IMAGE=tensorflow/tensorflow:nightly-gpu-jupyter
  echo CONTAINER=dds-5-gpu-container
  CONTAINER=dds-5-gpu-container
  RUNTIME_OPTS="--runtime=nvidia"
else  
  echo IMAGE=tensorflow/tensorflow:nightly-py3-jupyter
  IMAGE=tensorflow/tensorflow:nightly-py3-jupyter
  echo CONTAINER=dds-5-cpu-container
  CONTAINER=dds-5-cpu-container
  RUNTIME_OPTS=""
fi

echo docker pull $IMAGE
docker pull $IMAGE

if [ `uname` = "Linux" ]; then
  USER_MAPPING_OPTS="-u `id -u`:`id -g`"
  echo "Mapping user and group into container"
else
  USER_MAPPING_OPTS=""
  echo "No user mapping needed"
fi

echo docker run -d -p 8888:8888 $USER_MAPPING_OPTS $RUNTIME_OPTS -v `pwd`:/tf/5-tensorflow-notebook --name $CONTAINER $IMAGE
docker run -d -p 8888:8888 $USER_MAPPING_OPTS  $RUNTIME_OPTS -v `pwd`:/tf/5-tensorflow-notebook --name $CONTAINER $IMAGE
echo "The contain should now be started in the background. Will now tail the log from the container..."
echo docker logs -f \$CONTAINER
docker logs -f $CONTAINER
