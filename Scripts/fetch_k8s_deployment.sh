#!/bin/bash

# Fetch the first deployment name from Kubernetes and store it in a temporary file
/usr/local/bin/kubectl get deployments --output=jsonpath='{.items[0].metadata.name}' > /vishnu/code_deploy/.tmp

echo "Fetched Kubernetes Deployment Name and saved to /vishnu/code_deploy/.tmp"
