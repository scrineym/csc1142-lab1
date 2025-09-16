#!/bin/bash

echo "Starting Hadoop cluster..."

# Start the cluster
docker compose up -d

# Wait for namenode to be ready
echo "Waiting for namenode to start..."
sleep 30

# Format namenode if needed
echo "Formatting namenode..."
docker exec namenode hdfs namenode -format -force

echo "Hadoop cluster is starting up. Access points:"
echo "- NameNode Web UI: http://localhost:9870"
echo "- ResourceManager Web UI: http://localhost:8088"
echo "- NodeManager Web UI: http://localhost:8042"
echo "- DataNode1 Web UI: http://localhost:9864"
echo "- DataNode2 Web UI: http://localhost:9865"