# config maps
k create cm my-cm --from-literal=KEY-my-value
k create cm my-cm-2 --from-file=/my/file.txt

# secrets
k create secret generic my-secret --from-literal=PASS=supersecret --from-literal=PORT=8080

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