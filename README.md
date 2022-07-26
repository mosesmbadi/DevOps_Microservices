[![CircleCI](https://dl.circleci.com/status-badge/img/gh/mosesmbadi/DevOps_Microservices/tree/master.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/mosesmbadi/DevOps_Microservices/tree/master)

## Project Overview

This is my Forth project for the Cloud DevOps Engineer course. In this project, I have applied the skills acquired in this course to operationalize a Machine Learning Microservice API using Docker, Kubernetes, CircleCI and AWS.

Given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests my ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.


## Setup the Environment

* Create a virtualenv with Python 3.7 and activate it.
```
python3 -m pip install --user virtualenv

```
* You should have Python 3.7 available in your host. 
* Check the Python path using ```which python3```
* Create and activate a virtual environment
    - you need to install pip and virtualenv
```
virtualenv .devops
```
*Then cd into project directory and activate the virtual environment.
 ```
 .devops/Scripts/activate
 ```

* Run `make install` to install the necessary dependencies

## Running the Application

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

## Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
You'll need to install Docker, Minikube and VirtialBox to run K8s locally. The following commands spin up a Kubernetes cluster and configure it to run the Docker image you've built.
```
    minikube start
    kubectl get pod
```
* Create Flask app in Container
```
    docker run -p 8080:80 mosesmbadi/machine-learning-api
```
* Run via kubectl
```
    kubectl run machine-learning-api --image=$dockerpath --port=80
    kubectl port-forward mosesmbadi/machine-learning-api 8080:80
```    
 

## File directories

.circleci/config.yml - circleci configuration

model_data -  housing prices in Boston area

output_files/docker_out.txt - docker log outputs

output_files/kubernetes_out.txt - kubernetes log outputs

app.py - flask app API endpoint with routes to get house prices in Boston

Dockerfile - Docker configuration file

make_prediction.sh - script to log predictions endpoint output

Makefile - The Makefile includes instructions on environment setup and lint tests

requirements.txt - python dependencies for this project

run_docker.sh - shell script to build docker image and run it

run_kubernetes.sh - shell script to run the Docker Hub container with kubernetes

upload_docker.sh - shell script to upload local docker build image to docker hub (online repository)


N/B: In some cases you may need to manually run individual instructions in the bash files.