

# secrets
k create secret generic my-secret --from-literal=PASS=supersecret --from-literal=PORT=8080

kubectl get secrets/db-user-pass --template={{.data.PASS}} | base64 -D

