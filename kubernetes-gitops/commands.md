```bash
helm upgrade --install argocd argo/argo-cd --namespace argocd --create-namespace -f values.yaml
kubectl port-forward service/argocd-server -n argocd --address 0.0.0.0 8080:8080
```
