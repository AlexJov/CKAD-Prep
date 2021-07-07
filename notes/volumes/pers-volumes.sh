
# use short names
k get pv
k get pvc -o wide

# access file
kubectl exec pod-name -- cat /log/app.log

# explain pers volumes
k explain pv --recursive | less

# multiple resources
k get pv,pvc,pod

# get all storage classes
k get sc -A

