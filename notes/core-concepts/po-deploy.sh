kubectl [command] [TYPE] [NAME] [flags]

# create pod
k run nginx-pod image=nginx --dry-run=client -o yaml > nginx.yml
k apply -f nginx.yml

k run  nginx --image=nginx

k run redis -l tier=backend --image=redis:latest
k run redis-pod --image=redis:latest --port=8080

## EDITS
# Change the Image version to 1.15-alpine
kubectl set image pod/nginx nginx=nginx:1.15-alpine
# Another way it will open vi editor and change the version
kubeclt edit po nginx

# Check the Image version without the describe command (?)
kubectl  -o jsonpath='{.spec.containers[].image}{"\n"}'

# exec into the pod
kubectl exec -it nginx /bin/sh

# create a busybox pod and run command ls while creating it
kubectl run busybox --image=busybox --restart=Never -- ls

# Create a busybox pod with command sleep 3600
kubectl run busybox --image=busybox --restart=Never -- /bin/sh -c "sleep 3600"

# CHECK CONNECTION of the nginx pod from the busybox pod
kubectl get po nginx -o wide
kubectl exec -it busybox -- wget -o- <IP Address>

# create a busybox image and wget IP
k run busybox --image=busybox --restart=Never --rm -it -- wget -O- 172.18.0.5

# Create a busybox pod and echo message ‘How are you’ (+ case to remove it immediatelly)
kubectl run busybox --image=nginx --restart=Never -it -- echo "How are you"
kubectl run busybox --image=nginx --restart=Never -it --rm -- echo "How are you"

# HERE
kubectl get po -o=custom-columns="POD_NAME:.metadata.name, POD_STATUS:.status.containerStatuses[].state"

# SORT
kubectl get pods --sort-by=.metadata.name
kubectl get pods--sort-by=.metadata.creationTimestamp



# List the pod with different verbosity
kubectl get po nginx --v=7
kubectl get po nginx --v=8
kubectl get po nginx --v=9

# get running pod definition to yaml (nice!)
kubectl get pod <pod-name> -o yaml > pod-definition.yaml

# scale
k resplace -f rsdef.yml # only one saves state in yml
k scale --replicas=6 -f rsdef.yml
k scale --replicas=6 rs myapp-replicaset-name

# get all resources
k get all

# output 
k create namespace test-123 --dry-run -o json

# wide
kubectl get pods -o wide

## force delete
kubectl delete pods <pod> --grace-period=0 --force

# NOTE:
# Asign to a node:
nodeSelector:
  nodeName: my-nginx-node

k describe po nginx | grep Node-Selectors

# delete all 
k delete po --all

