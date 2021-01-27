#!/bin/bash
# Add requisite repositories
helm repo add elastic https://helm.elastic.co
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts

# Fetch upstream Elastic
helm pull elastic/elasticsearch --version 7.10.0
helm pull prometheus-community/prometheus-elasticsearch-exporter --version 4.1.0

# Move depedencies in
mv elasticsearch-7.10.0.tgz charts/
mv prometheus-elasticsearch-exporter-4.1.0.tgz charts/

# Lint directory
helm lint .

# Build new package.
helm package .

# Rebuild Index file.
helm repo index --url https://kaiwalyajoshi.github.io/kommander-elasticsearch .

# Cleanup
rm -rf charts/*
