#!/bin/bash

echo "Starting Node.js application..."

# Ensure PM2 is installed
sudo npm install -g pm2

# Reload shell to make PM2 accessible
export PATH=$PATH:$(npm bin -g)

# Stop all existing PM2 processes
pm2 stop all || true

# Start the application from the correct path
pm2 start /home/ubuntu/nodejs-app/app.js --name nodejs-app

