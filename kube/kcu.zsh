function kcu {
   if [ -z $1 ] || [ $1 = "ls" ] ; then
     ls ~/.kube/configs
     return 0
   fi
  export KUBECONFIG=~/.kube/configs/$1
  echo $1 > ~/.kube/last_used_config
}
if [[ -a "~/.kube/last_used_config" ]]; then
  export KUBECONFIG=~/.kube/configs/`cat ~/.kube/last_used_config`
fi