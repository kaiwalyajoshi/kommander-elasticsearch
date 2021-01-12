#!/bin/bash

# Lint directory
helm lint .

# Build new package.
helm package .

# Rebuild Index file.
helm repo index --url https://kaiwalyajoshi.github.io/kommander-elasticsearch .
