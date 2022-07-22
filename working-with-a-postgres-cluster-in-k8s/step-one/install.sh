#!bin/bash

# Author: Abhijith Ganesh
# Scenario: Working of Kubernetes


curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh
kubectl apply -f https://raw.githubusercontent.com/rancher/local-path-provisioner/master/deploy/local-path-storage.yaml
kubectl patch storageclass local-path -p '{"metadata": {"annotations":{"storageclass.kubernetes.io/is-default-class":"true"}}}'
kubectl apply -f https://raw.githubusercontent.com/cloudnative-pg/cloudnative-pg/release-1.16/releases/cnpg-1.16.0.yaml
kubectl apply -f https://raw.githubusercontent.com/AbhijithGanesh/Killercoda-scenarios/master/working-with-cloudnative-pg/step-two/manifest.yaml