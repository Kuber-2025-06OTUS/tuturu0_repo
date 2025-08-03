#!/bin/bash

set -eo pipefail

sa=cd
ns=homework
secret_name=cd-token
cluster_addr=https://192.168.49.2:8443
cluster_name=minikube


token=$(kubectl -n ${ns} get secret ${secret_name} --template={{.data.token}} | base64 --decode)
ca=$(kubectl -n ${ns} get secret ${secret_name} -o jsonpath='{.data.ca\.crt}')

cat << EOF > kubeconfig
apiVersion: v1
clusters:
- cluster:
  name: $cluster_name
    certificate-authority-data: $ca
    server: $cluster_addr
contexts:
- context:
  name: ${sa}@${cluster_name}
    cluster: $cluster_name
    namespace: $ns
    user: $sa
users:
- name: $sa
  user:
    token: $token
current-context: ${sa}@${cluster_name}
EOF
