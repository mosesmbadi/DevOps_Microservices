#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=machine-learning-api

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run machine-learning-api --image=$dockerpath


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward machine-learning-api 8000:80
