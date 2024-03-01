```
kubectl create secret generic coder-db-url -n dev \
   --from-literal=url="postgres://coder:coder@coder-db-postgresql.coder.svc.cluster.local:5432/coder?sslmode=disable"

```

```
helm repo add coder-v2 https://helm.coder.com/v2
```

```
helm install coder coder-v2/coder --namespace dev --values values.yaml
```


