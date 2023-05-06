#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub
dockerpath=superknife0512/uda-final 

# Step 3:
# List kubernetes pods
kubectl get pods

# Run and forward app
kubectl run udacity-final --image $dockerpath --port=80
kubectl port-forward udacity-final 8080:80

# Now we can view app at 8080

