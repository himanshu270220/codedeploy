#!/bin/bash
echo "Starting Node.js application..."
pm2 stop all || true
pm2 start app.js --name nodejs-app

