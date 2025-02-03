#!/bin/bash
cd /home/ubuntu/nodejs-app || exit

echo "Installing Node.js and npm..."
sudo apt-get update -y
sudo apt-get install -y nodejs npm

# Verify Node.js and npm installation
node -v
npm -v

echo "Fixing permissions for the application directory..."
# Ensure the current user has ownership of the application directory
sudo chown -R ubuntu:ubuntu /home/ubuntu/nodejs-app

echo "Installing dependencies..."
npm install


