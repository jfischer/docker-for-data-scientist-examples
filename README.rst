===================================
Docker for Data Scientists Examples
===================================

These are examples from my PyBay 2018 talk:
`Docker for Data Scientists <https://pybay.com/speaker/jeff-fischer/#talk-65>`__. The
slides are available in PDF form `here <https://github.com/jfischer/docker-for-data-scientist-examples/raw/master/Docker-for-Data-Scientists--Jeff-Fischer.pdf>`__.

Example Format
--------------
Each example has a ``README.txt`` file that explains the example and a ``run.sh`` script
that will pull the base Docker image, build the image for the example, and run the container.
To run each script on MacOS or Linux, change into the example's directory and run::

  sh run.sh

Most examples have a ``Dockerfile`` defining how to build the image. Examples
that leave containers
running or create new files in the local directory also have a ``cleanup.sh`` script to 
restore back to the original state.

Contents
--------
Here is a short explanation of each specific example:

* ``1-run-script`` — run a machine learning script inside a container
* ``2-pitfall-local-state`` — example of an anti-pattern: containers with mutable state inside
* ``3-mount-local-fs`` - mount the host filesystem inside the container
* ``4-map-user`` - map the host user into the container
* ``5-tensorflow-notebook`` - run TensorFlow and Jupyter in a detached container.
  We can switch between cpu and gpu execution by just changing the image name.
* ``6-neo4j-database`` — load and run a Neo4j database
* ``7-data-workspaces`` - manage a project as a workspace

For a full explanation of all the examples, see my blog series at https://data-ken.org/docker-for-data-scientists-part1.html.

November 2020 Note
------------------
These examples are in the process of being reworked for an upcoming book. Stay tuned
