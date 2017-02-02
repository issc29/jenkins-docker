# jenkins-docker

This Dockerfile creates a jenkins container with the Docker client installed.
It is intended to be used with the environment variable DOCKER_HOST so that you
can run containerized slaves on a DOCKER_HOST.

Based off of the official jenkins alpine image

## Usage

docker run -d -e DOCKER_HOST="tcp://[hostname]:2375" -p 8080:8080 issc29/jenkins-docker:[tag]
