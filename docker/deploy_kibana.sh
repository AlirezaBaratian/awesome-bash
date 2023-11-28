#!/usr/bin/env bash

function main() {
    # Crate network interface for elastic
    docker network create elastic

    # Pull Elastic
    docker pull docker.elastic.co/elasticsearch/elasticsearch:8.11.1

    # Run Elastic
    docker run --name es01 --net elastic -p 9200:9200 -it -m 1GB docker.elastic.co/elasticsearch/elasticsearch:8.11.1

    # Write elastic and kibana credentials into files
    docker exec -it es01 /usr/share/elasticsearch/bin/elasticsearch-reset-password -u elastic > elastic.txt
    docker exec -it es01 /usr/share/elasticsearch/bin/elasticsearch-create-enrollment-token -s kibana > kibana.txt

    # Pull Kibana
    docker pull docker.elastic.co/kibana/kibana:8.11.1

    # Run Kibana
    docker run --name kib01 --net elastic -p 5601:5601 docker.elastic.co/kibana/kibana:8.11.1

main
