# Working with a Postgres Stack that is highly available!

Through this tutorial slots, we'll be seeing how to set a Highly available Postgres Cluster using [stackgres](https://stackgres.io/doc/latest/tutorial/simple-cluster/) operator.

It has the folowing components:

- Patroni

  Patroni is a template for you to create your own customized, high-availability solution using Python and - for maximum accessibility - a distributed configuration store like ZooKeeper, etcd, Consul or Kubernetes. Database engineers, DBAs, DevOps engineers, and SREs who are looking to quickly deploy HA PostgreSQL in the datacenter-or anywhere else-will hopefully find it useful.

- Envoy

Envoy is an open source edge and service proxy, designed for cloud-native applications. It is extensible in order to provide advanced functionality based on the actual traffic (for example the Postgres could be parsed in order to offer stats) or on connection characteristic (like the TLS certificate in order to chose to which node the connection have to be dispatched.

Through this operator, one can use this operator in a service mesh based ecosysten.
