#!/bin/bash

# This script automates the setup process for the book recommendation system.

# Step 1: Build Docker images for Hadoop and Spark
echo "Building Docker images..."
docker build -t hadoop-image ./docker/hadoop
docker build -t spark-image ./docker/spark

# Step 2: Start the Docker containers using docker-compose
echo "Starting Docker containers..."
docker-compose up -d

# Step 3: Check if the containers are running
echo "Checking running containers..."
docker ps

echo "Setup completed successfully!"