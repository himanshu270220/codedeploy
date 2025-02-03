#!/bin/bash

echo "Starting Node.js application..."

# Ensure npm is available
echo "Ensuring Node.js and npm are installed..."
sudo apt-get update -y
sudo apt-get install -y nodejs npm

# Install PM2 globally
echo "Installing PM2 globally..."
sudo npm install -g pm2

# Reload shell to make PM2 accessible
export PATH=$PATH:$(npm bin -g)

# Stop any existing PM2 processes
pm2 stop all || true

# Start the application
pm2 start app.js --name nodejs-app


