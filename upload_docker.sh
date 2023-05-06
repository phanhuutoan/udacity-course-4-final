#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
credential_path=~/credentials/docker-password.txt
dockerpath="superknife0512/uda-final"

# Step 2:  
# Authenticate & tag
echo "Login docker..."
cat $credential_path | sudo docker login --username superknife0512 --password-stdin

# Step 3:
# Push image to a docker repository
docker push $dockerpath
