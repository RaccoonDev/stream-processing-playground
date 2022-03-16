# Stream Processing Playground

This repository contains a playground for learning stream processin via Flink.

This playground contains the following:
- zookeeper
- kafka broker
- confluent schema registry
- confluent control center
- kafka rest proxy
- battle.net server emulator (generates test events)
- prometheus
- grafana
- flink

To run the platform do the following:
1. create a docket network by running `init.sh`. This is a shared network for three different docker compose files.
1. start confluent platform: `cd confluent; docker-compose up -d; cd..;`
1. start prometheus and grafana: `cd prometheus-grafana; docker-compose up -d; cd ..;`
1. start flink: `cd flink; docker-compose up -d; cd ..;`

Useful links:
- Flink UI: http://localhost:7001
- Confluent Control Center: http://localhost:9021
- Grafana: http://localhost:3000
- Prometheus UI: http://localhost:9090
