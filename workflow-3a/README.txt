Run a Jupyter notebook for deep learning in a TensorFlow container. Example
from https://www.tensorflow.org/versions/r1.1/get_started/mnist/pros

Scripts:
 * run.sh builds and runs the notebook in detached mode with a default password of "test".
 * secure_run.sh prompts the user for a password and passes it to the container in the docker run command.
 * cleanup.sh deletes the container, if present, even if it is running
