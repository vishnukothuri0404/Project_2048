#!/bin/bash

# Validate if the Kubernetes deployment is running
kubectl rollout status deployment "nginx-2048-deployment-$VERSION"

# Optionally, print the status
if [ $? -eq 0 ]; then
  echo "Deployment is successful!"
else
  echo "Deployment failed!"
  exit 1
fi


#!/bin/bash

# Validate if the Kubernetes deployment is successful
kubectl rollout status deployment "nginx-2048-deployment-$VERSION"

# Optionally, print the status
if [ $? -eq 0 ]; then
  echo "Deployment is successful!"

  # Fetch the old deployment name from the temporary file and delete it
  old_deployment_name=$(cat /vishnu/code_deploy/.tmp)
  echo "Deleting old deployment: $old_deployment_name"

  # Delete the old Kubernetes deployment
  kubectl delete deployment "$old_deployment_name"
else
  echo "Deployment failed!"
  exit 1
fi
