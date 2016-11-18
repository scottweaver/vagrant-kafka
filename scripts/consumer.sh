#!/bin/bash

if [ $# -gt 0 ]; then
    $HOME/kafka_2.11-0.10.1.0/bin/kafka-console-consumer.sh --from-beginning --topic $1 --zookeeper 10.30.3.2:2181,10.30.3.3:2181,10.30.3.4:2181
else
    echo "Usage: consumer.sh <topic_name>"
fi

