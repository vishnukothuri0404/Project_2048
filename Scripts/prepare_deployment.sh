#!/bin/bash

# Fetch the most recent deployment ID from AWS CodeDeploy
output=$(aws deploy list-deployments \
    --application-name "2048-game-code-deployment" \
    --deployment-group-name "2048-game-code-deployment-group" \
    --query 'deployments[0]' \
    --output text)

# Convert the deployment ID to lowercase
lowercase_output=$(echo "$output" | tr '[:upper:]' '[:lower:]')

# Export the VERSION environment variable
export VERSION="$lowercase_output"

# Save the VERSION to ~/.bashrc for persistence
sed -i '/export VERSION=/d' ~/.bashrc
echo "export VERSION=\"$VERSION\"" >> ~/.bashrc

# Optionally, print the version
echo "Exported VERSION: $VERSION"

# Reload the bashrc to update the environment variable
source ~/.bashrc
