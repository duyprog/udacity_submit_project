#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=duypk2000/prod:1.0

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repositoryi
docker login --username duypk2000 
docker tag prod:1.0 duypk2000/prod:1.0

docker push $dockerpath
