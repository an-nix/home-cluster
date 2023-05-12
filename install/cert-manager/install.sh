#!/bin/bash

UNIQUE_NAME="meba.xyz"
DNS_SECRET="4e4abd7271c33ebec78e14c0e7224441"

kubectl apply -f https://github.com/cert-manager/cert-manager/releases/download/v1.11.2/cert-manager.yaml
helm install cert-manager-webhook-ovh cert-manager-webhook-ovh/deploy/cert-manager-webhook-ovh --set groupName=$UNIQUE_NAME -n cert-manager
kubectl create secret generic ovh-credentials --from-literal=applicationSecret=$DNS_SECRET -n cert-manager
kubectl apply -f permission.yaml
kubectl apply -f issuer.json
