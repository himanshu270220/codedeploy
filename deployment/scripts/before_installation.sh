#!/bin/bash

echo "Stopping any running applications..."
pm2 stop all || true

echo "Checking and cleaning up old deployment files..."
if [ -d "/home/ubuntu/deployment" ]; then
  echo "Old deployment directory exists. Removing it..."
  rm -rf /home/ubuntu/deployment
else
  echo "No old deployment directory found."
fi

echo "Creating a fresh directory for deployment..."
mkdir -p /home/ubuntu/deployment

echo "BeforeInstall steps completed successfully."
