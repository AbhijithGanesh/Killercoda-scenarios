# Install the operator through manifest

There are two ways to install the manifest of the [CloudNativePG](cloudnative-pg.io/) operator.

## Steps to install

### GitHub Manifest

The github link for the manifest is added [here](https://raw.githubusercontent.com/cloudnative-pg/cloudnative-pg/release-1.16/releases/cnpg-1.16.0.yaml)

To install the manifest , you can run the following command

`kubectl apply -f <link>`

### Helm Chart

You can run the following commands to install the helm chart

```bash
helm repo add pg-native  https://cloudnative-pg.github.io/charts
helm repo update
helm install <your deployment name> pg-native/cloudnative-pg
```
