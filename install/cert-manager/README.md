# CERT-MANAGER

## Description



## Installation

```bash 
kubectl apply -f https://github.com/cert-manager/cert-manager/releases/download/v1.14.3/cert-manager.yaml
```


```bash 
export API_TOKEN={API_TOKEN}
export EMAIL_ADDRESS={EMAIL}

envsubst < 001_secret.yaml | kubectl apply -f -
envsubst < 002_issuer.yaml | kubectl apply -f -
```

