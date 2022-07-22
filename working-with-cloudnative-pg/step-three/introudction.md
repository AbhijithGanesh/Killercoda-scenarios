# Making it ready for connections

_Congratulations_, you have made spun up your Postgres cluster, you now will be able to access it through the services configured with the CloudNative PG operator that you have installed.

## Checking out services

To list all the services that exist, run the folowing command

```bash
kubectl port-forward svc/cluster-example-any 5432
```

Your Postgres cluster running on Kubernetes is now ready to be accessed. This is the near ending of the first part of the challenge, We'll be jumping into second part of the challenge at the [Working with a Postgres Cluster in Kubernetes](https://killercoda.com/abhijith-ganesh/scenario/working-with-a-postgres-cluster-in-k8s)

If you already have the expertise of running a custom application in Kubernetes, feel free to bring the manifest/YAML file here and run the image here.
