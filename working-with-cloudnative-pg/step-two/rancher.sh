#! bin/bash

# Author: Abhijith Ganesh
# Title : Installing storageclass and persistent volume claim

kubectl apply -f https://raw.githubusercontent.com/rancher/local-path-provisioner/master/deploy/local-path-storage.yaml
