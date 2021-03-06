'''
Understand LivenessProbes and ReadinessProbes
Understand container logging
Understand how to monitor applications in Kubernetes
Understand debugging in Kubernetes
'''

# Note: Readiness probes runs on the container during its whole lifecycle.
# Caution: Liveness probes do not wait for readiness probes to succeed. 
#          If you want to wait before executing a liveness probe you should use initialDelaySeconds or a startupProbe.

k top pod
k top node

# "k top"
kubectl top po -A --sort-by=cpu

# explain command
kubectl explain Pod.spec.containers.livenessProbe

# get sorted events
kubectl get events --sort-by=.metadata.creationTimestamp

# redirect logs
k logs my-pod > my-logs.log

