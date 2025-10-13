```bash
helm repo add grafana https://grafana.github.io/helm-charts
helm upgrade --install loki grafana/loki -n logging --create-namespace -f loki-values.yaml
helm upgrade --install promtail grafana/promtail -n logging -f promtail-values.yaml
helm upgrade --install grafana grafana/grafana -n logging -f grafana-values.yaml
kubectl get secret --namespace logging grafana -o jsonpath="{.data.admin-password}" | base64 --decode ; echo
export POD_NAME=$(kubectl get pods --namespace logging -l "app.kubernetes.io/name=grafana,app.kubernetes.io/instance=grafana" -o jsonpath="{.items[0].metadata.name}")
kubectl --namespace logging port-forward $POD_NAME --address 0.0.0.0 3000:3000
```
