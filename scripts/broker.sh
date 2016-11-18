#!/bin/bash

#bootstrap server
sleep 5 # Wait for zookeeper to come up.
$HOME/kafka_2.11-0.10.1.0/bin/kafka-server-start.sh /vagrant/config/server$1.properties &
