# Figuring out secrets

One needs the Username and Password of the MongoDB instance that is serving your Mongo DB

## Accessing Services

To list the services run `kubectl get svc`

Use `my-db-psmdb-db-rs0` over `my-db-psmdb-db-cfg`

## Accessing Secrets

To access the K8S secrets for the MongoDB:

```sh
kubectl get secret minimal-cluster -o json
```

Through these secrets, you can configure your App to use the secrets for MongoDB

Methods to bring in your own application:

- ### Git Repository (clone it)

- ### Bring in your own Docker Image

- ### Bring in your own kubernetes manifest
