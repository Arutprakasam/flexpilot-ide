# Use a specific Node.js version as a base image
FROM node:20

# Set the working directory in the container
WORKDIR /app

# Install system-level dependencies required for the build
RUN apt-get update && apt-get install -y \
    build-essential \
    g++ \
    libx11-dev \
    libxkbfile-dev \
    libsecret-1-dev \
    libkrb5-dev \
    python-is-python3 \
    fakeroot \
    rpm \
    && rm -rf /var/lib/apt/lists/*

# Copy package management files to the working directory
COPY package.json package-lock.json ./

# Install Node.js dependencies
RUN npm install

# Copy the rest of the application source code to the working directory
COPY . .

# Set a default command to keep the container running or for interactive use
CMD ["bash"]
