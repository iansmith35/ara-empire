#!/bin/bash
set -e

# Install dependencies (root + client + server if needed)
npm install

# Build the client
cd client
npm install
npm run build
cd ..

# Start the server
npm run start:prod
