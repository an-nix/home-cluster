#!/bin/bash 

export SHA=$(head -c 16 /dev/urandom | shasum | cut -d " " -f 1)
export USER=admin

echo $USER > registry-creds.txt
echo $SHA >> registry-creds.txt

htpasswd -Bbn admin $SHA | base64 > ./htpasswd 

#helm install stable/docker-registry --name private-registry --namespace default --set persistence.enabled=false --set secrets.htpasswd=$(cat ./htpasswd)
