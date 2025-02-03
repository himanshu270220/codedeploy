#!/bin/bash
cd /home/ubuntu/nodejs-app || exit

echo "Installing Node.js and npm..."

# Update package list and install Node.js
sudo apt-get update -y
sudo apt-get install -y nodejs npm

# Verify Node.js and npm installation
node -v
npm -v

echo "Installing dependencies..."
npm install


