<center>[![mostafaabdelrahman](https://circleci.com/gh/mostafaabdelrahman/udacity-kubernetes-project04.svg?style=svg)](https://app.circleci.com/pipelines/gh/mostafaabdelrahman/udacity-kubernetes-project04)</center>

# Project 4: Operationalize a Machine Learning Microservice API

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

---

## Project Instructions

### Run `app.py` locally

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies
* Run using python: `python app.py`

### Containerize `app.py`

1. Make docker image, then run it: `./run_docker.sh`
2. Upload docker image to DockerHub: `./upload_docker.sh`
3. Run in Kubernetes: `./run_kubernetes.sh`

---

## Repository files description

1. `run_docker.sh`      : shell script to build and run docker container for app.py
1. `upload_docker.sh`   : shell script to upload docker image to DockerHub
1. `run_kubernetes.sh`  : shell script to deploy docker image to Kubernetes cluster
1. `requirements.txt`   : Python requirements module list for app.py
1. `make_prediction.sh` : shell script to send predition request to flask app
1. `Makefile`           :
1. `Dockerfile`         :
1. `app.py`             : flask python app to predict housing prices in Boston
1. `output_txt_files`   :
        direcotry contain :
            * `docker_out.txt`      : logging of running docker container when we executed `make_prediction.sh`
            * `kubernetes_out.txt`  : logging of running Kubernetes deployment when we executed `make_prediction.sh`
1. `.circleci/config.yml` : CircleCI configuration file


