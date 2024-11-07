
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

 copy-k8s-secret(){
  kubectl get secret $3 -n $1 -o json \
 | jq 'del(.metadata["namespace","creationTimestamp","resourceVersion","selfLink","uid"])' \
 | kubectl apply -n $2 -f -

}
