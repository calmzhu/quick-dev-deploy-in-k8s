kubectl create configmap ca-cert --from-file=ca.pem 
kubectl create configmap pipeline --from-file=logstash.conf
