# D2iQ Kommander Elasticsearch OSS

This is a Helm v3 umbrella chart to deploy Elasticsearch OSS in D2iQ Konvoy/Kommander.

This chart allows values for each of Elastic Master, Ingest, Client and Data nodes to be configured independently.

This chart directly uses the upstream community [Elasticsearch](https://github.com/elastic/helm-charts/tree/master/elasticsearch) chart without modification where possible.


## Add repository to Helm

```
helm repo add kommander-elasticsearch https://kaiwalyajoshi.github.io/kommander-elasticsearch/
```


## Install Helm Chart
```
helm install --generate-name kommander-elasticsearch
```
