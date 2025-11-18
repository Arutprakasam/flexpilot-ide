#!/bin/bash
set -e

IMAGE_NAME="flexpilot-build"

echo "Building Docker image..."
docker build -t $IMAGE_NAME .

echo "Running build inside Docker container..."
docker run --rm -v "$(pwd):/app" $IMAGE_NAME /bin/bash -c "npm run gulp vscode-linux-x64-min"

echo "Docker build complete."
