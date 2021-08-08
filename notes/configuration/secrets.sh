

# secrets
# first GENERIC, then secret name
k create secret generic my-secret --from-literal=PASS=supersecret --from-literal=PORT=8080

kubectl get secrets/db-user-pass --template={{.data.PASS}} | base64 -D

echo -n "kjdashkjd==" | base64 --decode

k describe po nginx | grep -A3 Env