#!/bin/bash

echo "Stopping the Node.js application..."
pm2 stop all || true

echo "Application stopped successfully."
