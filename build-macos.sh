#!/bin/bash
set -e

echo "Installing project dependencies..."
npm install

echo "Building for Apple Silicon (arm64)..."
npm run gulp vscode-darwin-arm64-min

echo "Build complete."
