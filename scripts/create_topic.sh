#!/bin/bash

if [ $# -gt 0 ]; then
    $HOME/kafka_2.11-0.10.1.0/bin/kafka-topics.sh --zookeeper localhost:2181 --replication-factor 3 --partition 1 --topic $1 --create
else
    echo "Usage: create_topic.sh <topic_name>"
fi
