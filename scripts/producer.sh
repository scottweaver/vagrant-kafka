#!/bin/bash

if [ $# -gt 0 ]; then
    $HOME/kafka_2.11-0.10.1.0/bin/kafka-console-producer.sh --topic "$1" --broker-list localhost:9092
else
    echo "Usage: producer.sh <topic_name>"
fi
