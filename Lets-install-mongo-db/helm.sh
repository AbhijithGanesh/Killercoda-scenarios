#!bin/bash

# Author: Abhijith Ganesh
# Scenario: Working of Kubernetes


curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh
kubectl apply --server-side -f https://raw.githubusercontent.com/percona/percona-server-mongodb-operator/v1.12.0/deploy/bundle.yaml

echo  "sharding:  
  configsvrReplSet:
    size: 2
    cpu: "100Mi"
    volumeSpec:
      persistentVolumeClaim:
        resources:
          requests:
            storage: "500Mi"
" > values.yaml
