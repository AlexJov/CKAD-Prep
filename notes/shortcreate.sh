# todo: test if still relevant 

k run nginx --image=nginx [creates deployment]
k run nginx --image=nginx --restart=Never [creates pod]
k run nginx --image=nginx --restart=OnFailure [job]
k run nginx --image=nginx --restart=OnFailure --schedule="* * * *" [cronJob]

k run nginx --image=nginx --restart=Never
    --port=8080
    --namespace=my-ns 
    --command
    --serviceaccount=my-sa1
    --env=HOSTNAME=host1
    --labels=bu=finance,env=dev,tier=backend
    --requests='cpu=100m,memory=256Mi'
    --limits='cpu=200m'
    --dry-run=client -o yaml -- /bin/sh -c 'echo helloworld' > pod.yml

k run frontend --replicas=2 --labels=example=loadbalancer --image=busybox --port=8080
k expose deployment frontend --type=NodePort --name=frontend-service --port=8181 --target-port=8080

k set sa deploy frontend myuser

k create service clusterip my-service --tcp=5678:8080 --dry-run-client -o yaml > service.yml