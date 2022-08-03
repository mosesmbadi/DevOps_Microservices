#!/usr/bin/env bash


# first run minikube start to start a k8s cluster
# then kubectl run machine-learning-api to run a pod inside the cluster
# then run kubectl to see the available/running pods inside that cluster

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
#if you're manually running the commands in the terminal, you don't need this line
dockerpath=mosesmbadi/machine-learning-api

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run machine-learning-api --image=$dockerpath --port=80



# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward mosesmbadi/machine-learning-api 8080:80

