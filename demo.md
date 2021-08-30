### network multitool 
```
kubectl create namespace devops-free
kcn devops-free
kubectl create deployment multitool --image=praqma/network-multitool -n devops-free
kubectl get pod -n devops-free

kubectl exec -it multitool-74477484b8-ndg6h -- /bin/sh

kubectl delete multitool
kubectl delete pod -l app=multitool
```
### container security demo
```
kubectl create namespace devops-demo
kcn devops-demo
kubectl create deployment container-security-demo --image=asauerwein/container-security-demo -n devops-demo
kubectl delete deployment container-security-demo -n devops-demo
```

### run alpine container as privileged
```
cat <<EOF | kubectl apply -f -
apiVersion: v1
kind: Pod
metadata:
  name: security-demo-privileged
spec:
  containers:
    - name: alpine
      image: alpine
      command: ["sleep"]
      args: ["300"]
      securityContext:
          privileged: true
EOF
```
```
kubectl get pod
kubectl describe pod security-demo-privileged
kubectl delete pod security-demo-privileged
```