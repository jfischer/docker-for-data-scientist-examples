===================================
Docker for Data Scientists Examples
===================================

These are examples from my PyBay 2018 talk:
`Docker for Data Scientists <https://pybay.com/speaker/jeff-fischer/#talk-65>`__. The
slides are available in PDF form `here <https://github.com/jfischer/docker-for-data-scientist-examples/raw/master/Docker-for-Data-Scientists--Jeff-Fischer.pdf>`__.

Example Format
--------------
Each example has a ``README.txt`` file that explains the example, and a ``run.sh`` bash script
that will pull the base Docker image, build the image for the example, and run the container.

Most examples have a ``Dockerfile`` defining how to build the image. Those that leave containers
running have a ``cleanup.sh`` script to delete the containers.

Contents
--------
Here is a short explanation of each specific example:

* ``workflow-1`` — run a machine learning script inside a container
* ``workflow-2a`` — mount the current directory inside a container and run an interactive shell
* ``workflow-2b`` — example of user mapping with the ``docker run`` command
* ``workflow-3a`` — run TensorFlow and Jupyter in a detached container
* ``workflow-3b`` — run the GPU-enabled version of TensorFlow in a detached container
* ``workflow-4`` — load and run a Neo4j database

For a full explanation of all the examples, see my blog series at https://data-ken.org/docker-for-data-scientists-part1.html.
