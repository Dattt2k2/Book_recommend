# Book Recommendation System

This project implements a book recommendation system using Hadoop and Spark, deployed via Docker. The system processes user data and provides personalized book recommendations based on user preferences.

## Project Structure

```
book-recommendation-system
├── docker
│   ├── hadoop
│   │   └── Dockerfile
│   └── spark
│       └── Dockerfile
├── docker-compose.yml
├── src
│   ├── data
│   │   └── preprocessing.py
│   ├── models
│   │   ├── recommendation.py
│   │   └── evaluation.py
│   └── utils
│       └── helpers.py
├── config
│   ├── hadoop-config.xml
│   └── spark-config.xml
├── scripts
│   ├── setup.sh
│   └── run.sh
└── README.md
```

## Setup Instructions

1. **Clone the repository:**
   ```bash
   git clone <repository-url>
   cd book-recommendation-system
   ```

2. **Build Docker images:**
   Run the setup script to build the necessary Docker images for Hadoop and Spark.
   ```bash
   ./scripts/setup.sh
   ```

3. **Start the services:**
   Use Docker Compose to start the Hadoop and Spark services.
   ```bash
   docker-compose up
   ```

## Usage Guidelines

- After starting the services, you can run the recommendation system by executing the run script.
  ```bash
  ./scripts/run.sh
  ```

- The system will process the input data and provide book recommendations based on the implemented algorithms.

## System Architecture

The architecture consists of the following components:

- **Data Preprocessing:** Handles loading and cleaning of datasets.
- **Recommendation Model:** Implements the logic for generating book recommendations.
- **Evaluation:** Assesses the performance of the recommendation model using various metrics.
- **Hadoop and Spark:** Provide the distributed computing environment necessary for processing large datasets.

## Contributing

Contributions are welcome! Please submit a pull request or open an issue for any suggestions or improvements.