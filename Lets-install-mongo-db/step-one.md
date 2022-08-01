# Lets install Mongo DB quickly

## Doing it via the Helm Chart

Adding repositories

```sh
helm repo add percona https://percona.github.io/percona-helm-charts/
helm repo update
```

Installing repository

```sh
helm install my-db percona/psmdb-db
```

## Doing it from the manifest

```sh
$ kubectl apply -f https://raw.githubusercontent.com/percona/percona-server-mongodb-operator/v1.12.0/deploy/cr-minimal.yaml
```

