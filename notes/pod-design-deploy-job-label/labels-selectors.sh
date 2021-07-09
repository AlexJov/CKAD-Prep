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
k get po -l 'env notin (staging)' --show-labels
k get po -l env=prod,tier=frontend

k get all -l env=prod

# field selectors
kubectl get pods --field-selector status.phase=Running