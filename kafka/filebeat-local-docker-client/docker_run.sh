#!/usr/bin/env bash
# vim: tabstop=4 expandtab shiftwidth=4 softtabstop=4
#
#

docker run \
    -d \
    --name filebeat \
    --network linker \
    --user root \
    -v "$(pwd)/filebeat.yml:/usr/share/filebeat/filebeat.yml:ro" \
    -v "/opt/babel/codespace/log:/var/log/client:ro" \
    docker.elastic.co/beats/filebeat:7.7.0 \
