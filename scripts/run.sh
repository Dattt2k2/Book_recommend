#!/bin/bash

# Navigate to the project directory
cd "$(dirname "$0")/.."

# Start the Docker containers using docker-compose
docker-compose up -d

# Wait for Hadoop and Spark to initialize
sleep 30

# Run the data preprocessing script
python src/data/preprocessing.py

# Start the recommendation model training
python src/models/recommendation.py

# Evaluate the model
python src/models/evaluation.py

# Keep the containers running
docker-compose logs -f