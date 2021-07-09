# 

- run: Create a new Pod to run a Container.
- expose: Create a new Service object to load balance traffic across Pods.
- autoscale: Create a new Autoscaler object to automatically horizontally scale a controller, such as a Deployment.

k run nginx --image=nginx --restart=Never [creates pod]
https://k8s-school.fr/resources/en/blog/kubectl-run-deprecated/

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

Create Pods:                                                                                                                    
kubectl run hello-pod --image=nginx --restart=Never --dry-run=client -o yaml > hello-pod.yaml

Expose a pod (using a service and specifying ports and service type)                   
kubectl expose po hello-pod --port=80 --target-port=9376 --type=NodePort

Create Deployments:                                                                                              
kubectl create deploy hello-deploy --image=nginx --dry-run=client -o yaml > hello-deploy.yaml

Update deployment image to nginx:1.17.4:                                       
kubectl set image deploy/hello-deploy nginx=nginx:1.17.4

Scale a deployment:                                                                                
kubectl scale deploy hello-deploy --replicas=20

Create Jobs:                                                                                                           
kubectl create job hello-job --image=busybox --dry-run=client -o yaml -- echo "Hello I am from job" > hello-job.yaml