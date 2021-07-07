kubectl [command] [TYPE] [NAME] [flags]

# create pod
k run nginx-pod image=nginx --dry-run=client -o yaml > nginx.yml
k apply -f nginx.yml

k run  nginx --image=nginx

k run redis -l tier=backend --image=redis:latest
k run redis-pod --image=redis:latest --port=8080

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

# deployment dry-run
k create deployment my-deploy --image=nginx --replicas=4 --dry-run=client -o yaml > dep.yml


kubectl edit deployment my-deployment

## force delete
kubectl delete pods <pod> --grace-period=0 --force

