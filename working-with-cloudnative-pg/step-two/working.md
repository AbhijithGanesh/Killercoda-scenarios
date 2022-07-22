# Deploying a Postgres Cluster

So previously, we have added the manifest but what does this mean ? Let me explain all the terms in this ecosystem.

I am assuming you have some experience working with Kubernetes, even otherwise, you will be able to understand the basic terms used here.

## Kubernetes Glossary Terms

- ### Persistent Volume Claim

This is the extension of Kubernetes API that allows users to abstract claims of [Persistent Volume](https://kubernetes.io/docs/concepts/storage/persistent-volumes/). A PersistentVolumeClaim (PVC) is a request for storage by a user. It is similar to a Pod. Pods consume node resources and PVCs consume PV resources

- ### Custom Resource Definition

This is the essential part of the operator that allows us to define custom API Resources (i.e Kubernetes API resources). A resource is an endpoint in the Kubernetes API that stores a collection of API objects of a certain kind; for example, the built-in pods resource contains a collection of Pod objects.

- ### Postgres Instance

An instance that runs a Postgres server listening through a TCP port

- ### Primary

An instance that works in r-w mode.

- ### Pod

A pod is the smallest computing unit that can be deployed in a Kubernetes cluster and is composed of one or more containers that share network and storage.
Service A service is an abstraction that exposes as a network service an application that runs on a group of pods and standardizes important features such as service discovery across applications, load balancing, failover, and so on.

## Working with kubernetes practically

### Addition of the Postgres cluster

To run a server, you need to configure it according to this manifest file

```yaml
apiVersion: postgresql.cnpg.io/v1
kind: Cluster
metadata:
  name: cluster-example
spec:
  instances: 3
  # Example of rolling update strategy:
  # - unsupervised: automated update of the primary once all
  #                 replicas have been upgraded (default)
  # - supervised: requires manual supervision to perform
  #               the switchover of the primary
  primaryUpdateStrategy: unsupervised

  # Require 1Gi of space
  storage:
    size: 500Mi
```

Here the maximum resource limits for your kubernetes node is:

`Kubeadm latest (atm 1.24) cluster with one controlplane, taint removed, ready to schedule workload 2GB environment`

**Once configured you need to apply the command**

`kubectl apply -f <filename>.yaml`
