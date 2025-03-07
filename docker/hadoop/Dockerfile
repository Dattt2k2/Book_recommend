FROM ubuntu:20.04

# Set environment variables
ENV HADOOP_VERSION 3.3.1
ENV HADOOP_HOME /usr/local/hadoop
ENV PATH $PATH:$HADOOP_HOME/bin:$HADOOP_HOME/sbin

# Install dependencies
RUN apt-get update && apt-get install -y \
    openjdk-8-jdk \
    wget \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Download and extract Hadoop
RUN wget https://downloads.apache.org/hadoop/common/hadoop-$HADOOP_VERSION/hadoop-$HADOOP_VERSION.tar.gz && \
    tar -xzf hadoop-$HADOOP_VERSION.tar.gz -C /usr/local/ && \
    mv /usr/local/hadoop-$HADOOP_VERSION $HADOOP_HOME && \
    rm hadoop-$HADOOP_VERSION.tar.gz

# Configure Hadoop environment
COPY hadoop-config.xml $HADOOP_HOME/etc/hadoop/

# Expose Hadoop ports
EXPOSE 50070 8088 9000

# Set the default command to run Hadoop
CMD ["bash"]