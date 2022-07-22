# Testing for all the services

If you've just opened this page, wait for roughly 180s and make sure you see the following components running
otherwise wait till they spin up.

**_Wait for a couple of seconds before running this_**

```bash
kubectl apply -f cluster.yaml
```

## Components

### Services

Check for the following services

```sh
NAME                  TYPE        CLUSTER-IP       EXTERNAL-IP   PORT(S) 
cluster-example-any   ClusterIP   10.102.98.216    <none>        5432/TCP   
cluster-example-r     ClusterIP   10.101.157.168   <none>        5432/TCP   
cluster-example-ro    ClusterIP   10.109.76.28     <none>        5432/TCP   
cluster-example-rw    ClusterIP   10.101.18.62     <none>        5432/TCP   
kubernetes            ClusterIP   10.96.0.1        <none>        443/TCP    
```

To check run the following command
`kubectl get svc`

### Pods

```sh
NAME                             READY   STATUS      RESTARTS
cluster-example-1                1/1     Running     0
cluster-example-1-initdb-zf52h   0/1     Completed   0
cluster-example-2                1/1     Running     0
cluster-example-2-join-pq8c2     0/1     Completed   0
cluster-example-3                1/1     Running     0
cluster-example-3-join-nx8lc     0/1     Completed   0
```

To check, run the follwing command
`kubectl get pods`
