#!/bin/bash

echo "Navigating to the deployment directory..."
cd /home/ubuntu/deployment

echo "Starting the Node.js application..."
pm2 start app.js --name "nodeapp"

echo "Application started successfully."

