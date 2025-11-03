```bash
helm upgrade --install consul hashicorp/consul --create-namespace --namespace consul --values consul-values.yaml
helm upgrade --install vault hashicorp/vault --namespace vault --create-namespace --values vault-values.yaml
helm upgrade --install external-secrets external-secrets/external-secrets -n external-secrets --create-namespace --set installCRDs=true
```
