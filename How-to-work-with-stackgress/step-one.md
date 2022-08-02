# Installing the operator

```sh
helm repo add stackgres-charts https://stackgres.io/downloads/stackgres-k8s/stackgres/helm/
helm install --namespace stackgres stackgres-operator \
    --set grafana.autoEmbed=true \
    --set-string grafana.webHost=prometheus-operator-grafana.monitoring \
    --set-string grafana.secretNamespace=monitoring \
    --set-string grafana.secretName=prometheus-operator-grafana \
    --set-string grafana.secretUserKey=admin-user \
    --set-string grafana.secretPasswordKey=admin-password \
    --set-string adminui.service.type=LoadBalancer \
stackgres-charts/stackgres-operator
```

Through this command , you'll be able to install the operator! If you choose to make a values file, this should be your Values file

```yaml
grafana:
  autoEmbed: true
  webHost: prometheus-operator-grafana.monitoring
  secretNamespace: monitoring
  secretName: prometheus-operator-grafana
  secretUserkey: admin-user
  secretPassword: admin-password
adminui:
  service:
    type: LoadBalancer
```

to apply the chart, via values,

```sh
kubectl apply -f values.yaml stackgres-charts/stackgres-operator
```
