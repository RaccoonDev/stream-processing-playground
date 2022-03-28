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

# Alternative installation

In case you would like to run eveyrthing without docker, you can do the following.

## Confluent platform with battlenet emulator

1. Download confluent platform archive from https://packages.confluent.io/archive/7.0/confluent-7.0.1.tar.gz
1. Unpack the archive to an appropriate place
1. Following instructions from [this link](https://docs.confluent.io/platform/current/quickstart/ce-docker-quickstart.html?utm_medium=sem&utm_source=google&utm_campaign=ch.sem_br.brand_tp.prs_tgt.confluent-brand_mt.mbm_rgn.emea_lng.eng_dv.all_con.confluent-docker&utm_term=%2Bconfluent%20%2Bdocker&creative=&device=c&placement=&gclid=EAIaIQobChMItKLjtPvo9gIVI4xoCR3gCgOpEAAYASAAEgLqe_D_BwE)
1. `export CONFLUENT_HOME=<WHENEVER_PATH_YOU_EXTRACTED_PACKAGE_TO>`
1. `export PATH=$PATH:$CONFLUENT_HOME/bin`
1. `confluent local services control-center start`
1. Download battle net emulator universal package from [this link](https://drive.google.com/file/d/1RGhHb5mFypVIYH6X43tH6n6n87YNf9BE/view?usp=sharing)
1. Unpack the emulator and run the binary by running `./bin/battlenet_emulator`

## Minio

On mac I recommend following [these instructions](https://docs.min.io/docs/minio-quickstart-guide.html) and install minio from homebrew.

## Flink

Can be downloaded from offitial distribution started with `./bin/start-cluster.sh`

