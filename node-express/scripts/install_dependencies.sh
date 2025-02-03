#!/bin/bash

echo "Upgrading Node.js to version 18..."

# Remove the old version of Node.js
sudo apt-get remove -y nodejs

# Install the Node.js 18.x repository
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -

# Install Node.js
sudo apt-get install -y nodejs

# Verify the installed version
node -v
npm -v

echo "Installing application dependencies..."
cd /home/ubuntu/nodejs-app || exit
npm install

