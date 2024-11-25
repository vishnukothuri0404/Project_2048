#!/bin/bash

# Substitute environment variables into the Deployment.yml file and apply it
pwd
envsubst < vishnu/code_deploy/Kubernetes/Deployment.yml | /usr/local/bin/kubectl apply -f -

# Optionally, print the status of the deployment
echo "Deployment applied successfully!"
