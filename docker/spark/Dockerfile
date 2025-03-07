FROM openjdk:8-jdk-slim

# Set environment variables
ENV SPARK_VERSION=3.1.2
ENV HADOOP_VERSION=3.2.0
ENV SPARK_HOME=/opt/spark
ENV PATH=$SPARK_HOME/bin:$PATH

# Install dependencies
RUN apt-get update && apt-get install -y \
    wget \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Download and install Spark
RUN wget https://downloads.apache.org/spark/spark-$SPARK_VERSION/spark-$SPARK_VERSION-bin-hadoop$HADOOP_VERSION.tgz -O /tmp/spark.tgz \
    && tar -xzf /tmp/spark.tgz -C /opt/ \
    && mv /opt/spark-$SPARK_VERSION-bin-hadoop$HADOOP_VERSION $SPARK_HOME \
    && rm /tmp/spark.tgz

# Set working directory
WORKDIR $SPARK_HOME

# Expose ports
EXPOSE 8080 7077

# Default command
CMD ["spark-shell"]