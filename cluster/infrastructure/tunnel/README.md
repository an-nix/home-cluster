sudo kubectl create secret generic ssh-public-key --from-file=mebarpimx=mebarpimx.pub -n tunnel


https://gist.github.com/drmalex07/c0f9304deea566842490


export SSH_PUBLIC_KEY={CLIENT_PUBLIC_KEY}

envsubst < 001_config.yaml | kubectl apply -f -