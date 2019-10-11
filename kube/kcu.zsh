function kcu {
   if [ -z $1 ] || [ $1 = "ls" ] ; then
     ls ~/.kube/configs
     return 0
   fi
  export KUBECONFIG=~/.kube/configs/$1
  export KUBEVERSION=`kubectl version --short | grep Server | awk '{print substr($3,2)}'`
  asdf install kubectl $KUBEVERSION > /dev/null
  asdf shell kubectl $KUBEVERSION
  echo $1 > ~/.kube/last_used_config
}
