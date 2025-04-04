
FROM ubuntu:20.04

WORKDIR /app

# Install dependencies with verbose output
RUN apt-get update -y && apt-get install -y \
    curl \
    gnupg \
    lsb-release \
    && curl -fsSL https://deb.nodesource.com/setup_16.x | bash - \
    && apt-get install -y nodejs \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

