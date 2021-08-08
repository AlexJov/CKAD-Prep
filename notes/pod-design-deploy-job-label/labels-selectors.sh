'''
Understand Deployments and how to perform rolling updates
Understand Deployments and how to perform rollbacks
Understand Jobs and CronJobs
Understand how to use Labels, Selectors, and Annotations
'''
# labels
k get po --show-labels
k get po --selector env=dev
k get po --selector bu!=finance

k get po -l env=prod --show-labels
k get po -l 'env in (dev)' --show-labels
k get po -l 'env notin (staging,uat)' --show-labels
k get po -l env=prod,tier=frontend

k get all -l env=prod

k label po nginx-1 env=uat --overwrite

# REMOVE LABEL
k label po nginx-{1..3} env-

kubectl label po nginx1 nginx2 nginx3 app-
kubectl label po nginx{1..3} app-

# show pods with label key value "app"
kubectl get po -L app

# field selectors
kubectl get pods --field-selector status.phase=Running

# annotations
kubectl annotate pod nginx-dev{1..3} name=webapp
## grep annotations (note -i used with describe, not get)
k describe po nginx-{1..5} | grep -i annotations

# show label values as columns
k get po -L noapp,app
| NAME     READY   STATUS    RESTARTS   AGE     NOAPP        APP
| nginx1   1/1     Running   0          6m28s                v1
| nginx2   1/1     Running   0          6m14s                v3
| nginx3   1/1     Running   0          6m7s    irrelevant   v1
