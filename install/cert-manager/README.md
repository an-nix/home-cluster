export API_TOKEN={API_TOKEN}
export EMAIL_ADDRESS={EMAIL}

envsubst < 001_secret.yaml | kubectl apply -f -
envsubst < 002_issuer.yaml | kubectl apply -f -
