#!/bin/bash

kubectl create namespace cert-manager

kubectl apply -f https://github.com/jetstack/cert-manager/releases/download/v1.6.0/cert-manager.yaml

kubectl apply -f letsencrypt.yml
