#!/bin/bash

UNIQUE_NAME="meba.xyz"
DNS_SECRET="zs0qXKKuhizrCgJ5HN4K"

kubectl apply -f https://github.com/cert-manager/cert-manager/releases/download/v1.8.0/cert-manager.yaml
helm install cert-manager-webhook-ovh cert-manager-webhook-ovh/deploy/cert-manager-webhook-ovh --set groupName=$UNIQUE_NAME -n cert-manager
kubectl create secret generic ovh-credentials --from-literal=applicationSecret=$DNS_SECRET -n cert-manager
kubectl apply -f permission.yaml
kubectl apply -f issuer.json
