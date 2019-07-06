PASSWORD=$(kubectl get secret quickstart-elastic-user -o=jsonpath='{.data.elastic}' | base64 --decode)
echo $PASSWORD
##elastic/74rvbgttfcz8fqznmt768ktp
kubectl port-forward service/kibana-kibana 5601 --address=0.0.0.0

### https://www.elastic.co/cn/elasticsearch-kubernetes
## Open browser @ http://localhost:5601 and login with user elastic and the password that you copied from the terminal.
## 
## Kibana will offer to install sample data for you to look at. Go for it!
## 
## After you look at the sample dashboard, open the Monitoring app @ http://localhost:5601/app/monitoring
## 
## Enable monitoring and then look at the state of your single node Elasticsearch cluster.
