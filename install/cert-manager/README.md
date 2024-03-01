kubectl apply -f https://github.com/cert-manager/cert-manager/releases/download/v1.11.0/cert-manager.yaml

export API_TOKEN={API_TOKEN}
export EMAIL_ADDRESS={EMAIL}

envsubst < 001_secret.yaml | kubectl apply -f -
envsubst < 002_issuer.yaml | kubectl apply -f -
