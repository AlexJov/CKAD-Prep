
# pod level
[...]
spec:
  securityContext:
    runAsUser: 1000
    runAsGroup: 3000
    fsGroup: 2000
  containers:
  - name: sec-ctx-demo
    image: busybox
    command: [ "sh", "-c", "sleep 1h" ]
    [...]

# container level
spec:
  securityContext:
    runAsUser: 1000
  containers:
  - name: sec-ctx-demo-2
    image: gcr.io/google-samples/node-hello:1.0
    securityContext:
      runAsUser: 2000
      allowPrivilegeEscalation: false

# capabilities
securityContext:
  runAsUser: 1000

# get shell into running container
kubectl exec -it security-context-demo -- sh

// verify
kubectl exec -it secbusybox -- sh
id // it will show the id and group
uid=1000 gid=2000

# use grep
k get po secure-pod -o yaml | grep runAs
