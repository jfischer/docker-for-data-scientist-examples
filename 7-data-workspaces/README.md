7. Data Workspaces
==================
In this example, we show how the [Data Workspaces](https://dataworkspaces.ai) platform
can be used to manage data science projects, including experiment tracking, reporting,
collaboration, and deployment.

We "clone" a [climate science analysis project](https://github.com/data-workspaces/buoy-data-analysis),
which includes raw source data, transformed data, experimental results, and all the associated code.

Given a data workspace published on GitHub, we can get an environment running under Docker with the
following steps (in `run.sh`):

1. Make sure Data Workspaces is installed in our environment. If not install it via `pip`
2. Run the `dws clone` command to copy and initialize the project
3. Build a container for the project via `dws deploy build`. This calls `repo2docker`
   under the covers.
4. Run the container via `dws deploy run`

A Jupyter notebook is now available at the URL printed by the container.

By default, the container created by Data Workspaces is designed to be a
self-contained environment for both running experiements and updating the
central repository. As such, the files for the workspace are inside the
container (rather than mounted from the host) and the user's local ssh keys
are mounted in the container (for Git authorization).


