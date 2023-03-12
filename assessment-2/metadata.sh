#!/bin/bash

# Get the instance ID
INSTANCE_ID=$(curl -s http://169.254.169.254/latest/meta-data/instance-id)

# Get the instance metadata and save it as a JSON file
curl -s http://169.254.169.254/latest/dynamic/instance-identity/document | jq '.' > instance-metadata.json

# Print the instance metadata as JSON
cat instance-metadata.json
