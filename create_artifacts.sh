#!/bin/bash
# Add requisite repositories
helm repo add elastic https://helm.elastic.co

# Fetch upstream Elastic
helm pull elastic/kibana --version 7.10.0

# Move depedencies in charts/
mkdir -p charts
mv kibana-7.10.0.tgz charts/

# Lint directory
helm lint .

# Build new package.
helm package .

# Rebuild Index file.
helm repo index --url https://kaiwalyajoshi.github.io/kommander-elasticsearch .

# Cleanup
rm -rf charts/*
