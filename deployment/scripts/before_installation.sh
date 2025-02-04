#!/bin/bash

echo "Stopping any running application..."
pm2 stop all || true

echo "Cleaning up old deployment files..."
rm -rf /home/ubuntu/deployment || true

echo "Creating a fresh directory for deployment..."
mkdir -p /home/ubuntu/deployment

echo "BeforeInstall steps completed successfully."

