#!/usr/bin/env bash

# Create deployment
kubectl apply -f udacity-prediction-app.yaml

# List kubernetes pods
kubectl get pods

# Expose service
kubectl expose deployment/udacity-prediction-app --port 8000 --target-port 80

# Scaling to be shown in demo video
# kubectl scale deployment/udacity-prediction-app --replicas=3
