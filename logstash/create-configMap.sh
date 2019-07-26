kubectl create configmap ca-cert --from-file=ca.pem 
kubectl create configmap pipeline-gitlab --from-file=logstash-kafka-gitlab.conf 
