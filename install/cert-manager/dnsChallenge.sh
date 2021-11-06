https://github.com/baarde/cert-manager-webhook-ovh.git

helm install cert-manager-webhook-ovh -n cert-manager ./deploy/cert-manager-webhook-ovh --set groupName='meba.xyz'

kubectl create secret generic ovh-credentials --from-literal=applicationSecret='N9yDeNWIMexsSGlNykEFl0elWs95O1nJ'

