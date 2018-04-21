# Clojure Overture - A Tour of Clojure

An environment for exploring Clojure, including a Jupyter-based
tutorial and some example projects.

## Requirements

1. Install [Docker](https://docs.docker.com/install/)
   * **IMPORTANT:** If you are running Docker on Linux, and you do not
     follow [the instructions to add your user to the Docker
     group](https://docs.docker.com/install/linux/linux-postinstall/#manage-docker-as-a-non-root-user),
     then you will need to prefix any commands involving Docker
     (including the `make` commands) with `sudo`.
2. Clone this repository with Git (or download and extract the zip file)

## Usage

### Starting/Stopping

To start the Docker container, run: `make start` in this directory.

To stop the container, run: `make stop`.

To remove the existing Docker container (e.g. to rebuild from the a
new version of the Docker image or), run: `make clean`

### Viewing Notebooks

To view the Jupyter Notebooks, open
[http://localhost:8888](http://localhost:8888) in your web browser,
and open the `notebooks/` directory.

### Running/Creating Projects

Open a shell in the Docker container with `make bash`. Move into the
projects directory with `cd projects`.

Create a new project with `lein new app my-new-project`. You can also
replace `app` with any other leiningen template, such as `reagent`,
`reagent-frontend`, or `luminus`. You may need to run `make chown` to
allow the files to be edited from outside the Docker container.

Move into any project directory and run `lein run` to execute the
project.

## Important Notes

As the user in the Docker container is root, you will need to run
`make chown` on your host to allow editing created files from outside
the container.
