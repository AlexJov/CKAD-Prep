

## Note: The command field corresponds to entrypoint in some container runtimes. 

# command
k run mp-hello --image=alpine --command $dr -- /bin/sh -c 'sleep infinity' > multi.yml

# args
k run mp-hello --image=alpine $dr -- '' > multi-2.yml


env:
- name: MESSAGE
  value: "hello world"
command: ["/bin/echo"]
args: ["$(MESSAGE)"]

# This means you can define an argument for a Pod using any of the techniques available for defining environment variables, including ConfigMaps and Secrets.

kubectl logs busybox -c busybox2 --previous
kubectl exec busybox -c busybox3 -- ls

# If pod crashed and restarted, get logs about the previous instance
kubectl logs nginx -p


kubectl top pod busybox --containers

# exec into container
kubectl exec -it  multi-cont-pod -c main-container -- sh
kubectl exec -it  multi-cont-pod -c sidecar-container -- sh
> apt-get update && apt-get install -y curl
> curl localhost

