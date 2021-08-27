### network multitool 
kubectl create namespace devops-free
kcn devops-free
kubectl create deployment multitool --image=praqma/network-multitool -n devops-free
kubectl get pod -n devops-free

kubectl exec -it multitool-74477484b8-ndg6h -- /bin/sh


kubectl delete pod -l app=multitool

### container security demo
kubectl create namespace devops-demo
kcn devops-demo
kubectl create deployment container-security-demo --image=asauerwein/container-security-demo -n devops-demo
kubectl delete deployment container-security-demo -n devops-demo