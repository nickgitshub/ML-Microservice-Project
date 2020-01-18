#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<dashernick/devops-engineer-project-4>

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run --image=dashernick/devops-engineer-project-4:prediction prediction-app --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
pod_name=$(kubectl describe pod | grep -E '\bName\:' | sed 's/Name\: *\(.*\)/\1/')
kubectl port-forward $pod_name 8000:80


