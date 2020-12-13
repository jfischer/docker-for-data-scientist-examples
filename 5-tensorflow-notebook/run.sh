set -e
if [ "$1" = "gpu" ]; then
  if [ `uname` != "Linux" ]; then
    echo "GPU option only supported with Linux"
    exit 1
   fi
  if [ "`which nvidia-smi`" = "" ]; then
    echo "WARNING: nvidia-smi not found. Do you have your system correctly configured with an NVIDIA GPU?"
  fi  
  echo IMAGE=tensorflow/tensorflow:nightly-gpu-jupyter
  IMAGE=tensorflow/tensorflow:nightly-gpu-jupyter
  echo CONTAINER=dds-5-gpu-container
  CONTAINER=dds-5-gpu-container
  RUNTIME_OPTS="--runtime=nvidia"
else  
  if [ "$1" = "cpu" ]; then
    echo IMAGE=tensorflow/tensorflow:nightly-py3-jupyter
    IMAGE=tensorflow/tensorflow:nightly-py3-jupyter
    echo CONTAINER=dds-5-cpu-container
    CONTAINER=dds-5-cpu-container
    RUNTIME_OPTS=""
  else
    echo "ERROR: Missing or invalid argument. Please specify either cpu or gpu."   
    exit 1
  fi
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
