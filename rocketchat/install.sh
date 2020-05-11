#!/usr/bin/env bash
# vim: tabstop=4 expandtab shiftwidth=4 softtabstop=4
#
#
mongou=rocketchat
mongop=$1
mongop_root=$2
fqdn=chat.kube.justcalm.ink

helm install --set persistence.enabled=true,mongodb.mongodbUsername=$mongou,mongodb.mongodbPassword=$mongop,mongodb.mongodbDatabase=rocketchat,mongodb.mongodbRootPassword=${mongop_root},host=$fqdn,ingress.enabled=true rocketchat .


