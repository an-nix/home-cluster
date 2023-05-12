# Deploy postgre-operator and pgAdmin



# postgre-operator

https://github.com/zalando/postgres-operator.git

Create dabase namespace
```
kubectl create namespace database
```

Switch context to dabase namespace
```
kubectl config set-context $(kubectl config current-context) --namespace=database
```

Deploy postgre-operator
```
kubectl apply -f postgre-operator/001-configmap.yaml
kubectl apply -f postgre-operator/002-postgres-operator.yaml
kubectl apply -f postgre-operator/003-operator-service-account-rbac.yaml
kubectl apply -f postgre-operator/004-api-service.yaml
```

# postgre-operator-ui


# pgAdmin4

Create configuration secret
```
kubectl create secret generic pgadmin-config --from-literal=PGADMIN_DEFAULT_EMAIL="admin@admin.com" --from-literal=PGADMIN_DEFAULT_PASSWORD="welcome"

kubectl apply -f pgAdmin/001-volume.yaml
kubectl apply -f pgAdmin/002-deployment.yaml
kubectl apply -f pgAdmin/003-service.yaml
kubectl apply -f pgAdmin/004-ingress.yaml
```