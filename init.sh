#!/bin/sh
if docker network inspect stream-processing-playground > /dev/null; then
    echo "Network exists: all good"
else
    echo "Creating docker network..."
    docker network create stream-processing-playground
fi
