kubectl create -f https://raw.githubusercontent.com/projectcalico/calico/v3.25.1/manifests/tigera-operator.yaml

kubectl create -f custom-ressource

vim /etc/cni/net.d/10-calico.conflist

kubectl edit cm cni-config -n calico-system

Under container_settings, set allow_ip_forwarding to true:

"container_settings": {
   "allow_ip_forwarding": true
}

