#!bin/bash

# Author: Abhijith Ganesh
# Scenario: Working of Kubernetes


curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.
kubectl apply --server-side -f https://raw.githubusercontent.com/percona/percona-server-mongodb-operator/v1.12.0/deploy/bundle.yaml
clear
