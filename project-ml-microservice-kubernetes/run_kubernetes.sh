#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=duypk2000/prod:1.0

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run prodapp --image=$dockerpath --port=80

# Step 3:
# List kubernetes pods
kubectl get pods -A
# Step 4:
# Forward the container port to a host
sleep 60
kubectl port-forward prodapp 8000:80
