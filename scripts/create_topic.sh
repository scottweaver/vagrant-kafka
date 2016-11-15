#!/bin/bash

if [ $# -gt 0 ]; then
    $HOME/kafka_2.10-0.10.1.0/bin/kafka-topics.sh --zookeeper 10.30.3.2:2181 --replication-factor 3 --partition 1 --topic $1 --create
else
    echo "Usage: create_topic.sh <topic_name>"
fi

