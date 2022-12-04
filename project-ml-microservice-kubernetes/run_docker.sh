#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
docker build . -t prod:1.0
# Step 2: 
# List docker images
docker images
# Step 3: 
# Run flask app
docker run -p 8000:80 prod:1.0

