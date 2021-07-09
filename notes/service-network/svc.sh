'''
Understand Services
Demonstrate basic understanding of NetworkPolicies
'''

# sevice
## use pod's labels and selectors ["expose pod"]
k expose pod redis --port=6379 --name=redis-svc --dry-run=client -o yaml 

## create new (assume app=redis, you cannot pass selectors) - generate file and modify selectors before creating service
k create service clusterip redis --tcp=6379:6379 --dry-run=client -o yaml

## create Service of type NodePort (you cannot specify port)
k expose pod nginx --port=80 --name=nginx-svc --type=NodePort --dry-run=client -o yaml

## not using pod labels or selectors, but you can specify port
k create service nodeport nginx --tcp=80:80 --node-port=30080 --dry-run=client -o yaml


## EXPOSE POD
## NOTE: --name= of the newly created 
## k expose pod -h 
kubectl expose pod ig-11 --name=greef --port=8080 --target-port=80