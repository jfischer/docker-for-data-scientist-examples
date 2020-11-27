Simple example to install the vi editor into our container and run
the bash shell for interactive development. However, if you make any changes to
the files in the container, they are lost!!!

To demonstrate this:

1. Run the script: ``sh run.sh``
2. You will be placed in a Linux shell inside the container. Now, edit the script,
   ``iris_with_save.py``.
3. You can also run the script: ``python3 iris_with_save.py``
4. Verify that the output files were created: ``iris_model.joblib`` and ``results.json``
5. Exit the docker shell: ``exit``
6. Look in your current directory. The joblib and JSON files are not present and any changes
   you made to the Python script are missing.


This is why we recommend that you alway treat your Docker containers as stateless!
