# Lets install Mongo DB quickly

## Doing it via the Helm Chart

Adding repositories

```sh
helm repo add percona https://percona.github.io/percona-helm-charts/
helm repo update
```

Installing repository

```sh
helm install my-db percona/psmdb-db -f values.yaml
```

## Doing it from the manifest

Don't try doing this in your local environment as this is not the reccomended way of doing it!

```sh
kubectl apply -f https://raw.githubusercontent.com/percona/percona-server-mongodb-operator/v1.12.0/deploy/cr-minimal.yaml
```
