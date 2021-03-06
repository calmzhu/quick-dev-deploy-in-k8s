kubectl port-forward service/es2-es 9200 --address=0.0.0.0 &
PASSWORD=$(kubectl get secrets es2-elastic-user  -o=jsonpath='{.data.elastic}' | base64 --decode)
NODE_TLS_REJECT_UNAUTHORIZED=0 \
 elasticdump \
 --output=gitlab_events.json \
 --input="https://elastic:$PASSWORD@127.0.0.1:9200/gitlab_events"

