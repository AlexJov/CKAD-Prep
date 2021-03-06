

# Create Jobs:                                                                                                           
kubectl create job hello-job --image=busybox --dry-run=client -o yaml -- echo "Hello I am from job" > hello-job.yaml

kubectl create job my-job --image=alpine -- date

# https://k8s-school.fr/resources/en/blog/kubectl-run-deprecated/

# [NO LONGER VALID]
k run nginx --image=nginx --restart=OnFailure --schedule="* * * *" [cronJob]

# {replaced with}
k create cronjob pi --image=perl --schedule="0/5 * * * ?"  -- perl -Mbignum=bpi -wle 'print bpi(2000)'

# print date and string every minute
kubectl create cronjob date-job --image=busybox --schedule="*/1 * * * *" -- bin/sh -c "date; echo Hello from kubernetes cluster"

# node (js) version
kubectl create job nodeversion --image=node -- node -v


# get
k get cronjob
k get cj
k get jobs 