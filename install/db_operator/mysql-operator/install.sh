#!/bin/bash

#kubectl apply -f https://raw.githubusercontent.com/mysql/mysql-operator/trunk/deploy/deploy-crds.yaml

helm repo add mysql-operator https://mysql.github.io/mysql-operator/
helm repo update

helm install mysql-operator mysql-operator/mysql-operator --namespace database --create-namespace
