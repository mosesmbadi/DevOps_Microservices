#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=mosesmbadi/machine-learning-api

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run machine-learning-api --image=mosesmbadi/machine-learning-api



# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward pods/machine-learning-api 8080:80
