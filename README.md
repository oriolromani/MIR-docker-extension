# MIR-docker-extension

## Introduction
This is a docker image that extends the [MIR-toolbox-docker](https://github.com/MTG/MIR-toolbox-docker)
docker image. The MIR-toolbox-docker image runs an ipython notebook server with [this dependencies](https://github.com/MTG/MIR-toolbox-docker)
plus MTG's [essentia library](http://essentia.upf.edu/documentation/).

We provide in here a way of to facilitate extending the base image with new requirements.

## Installation
It is recommended to read the documentation about [Docker](https://docs.docker.com/)
and [docker-compose](https://docs.docker.com/compose/).

### Install docker
#### Windows
https://docs.docker.com/docker-for-windows/install/

#### Mac
https://docs.docker.com/docker-for-mac/install/

#### Ubuntu
https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/#install-docker-ce

### Install docker-compose
Follow [instructions](https://docs.docker.com/compose/install/).

## Run
First run the following command:

    docker-compose up

Then access localhost:8888 on your browser and when asked for a password use _mir_

## Add new requirements
Simply add them into the requirements.txt file as it is done in [here](https://github.com/MTG/MIR-toolbox-docker/blob/master/requirements.txt)
and run:

    docker-compose up --build

## Data
Take into consideration that the docker container created by the _docker-compose up_ command will
only be able to access the directories on your machine that are specified on the _volumes_
instruction of the _docker-compose.yml_ file.

With the configuration we provide in here the working directory ('.') is mounted in the
docker container on _/home/ds/notebooks_.

If you want to mount a different directory, for instance _/home/user/data_, modify the volumes section of the
docker_compose.yml file like:

```
    volumes:
     - /home/user/data:/home/ds/notebooks
```