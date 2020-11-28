Run a Jupyter notebook for deep learning in a TensorFlow container. Example
from https://www.tensorflow.org/tutorials/keras/classification. We use
one of the pre-built Docker images from TensorFlow.


Scripts:
 * run.sh builds and runs the notebook in detached mode. By default, it runs
   using the CPU. For running on the GPU, add "gpu" as a command line
   argument. The GPU is only supported on Linux systems with an NVIDIA
   GPU and the appropriate drivers installed (run "nvidia-smi" to verify
   that things are correctly configured on your host system).
 * cleanup.sh deletes the container, if present, even if it is running
