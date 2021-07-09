

# Create Jobs:                                                                                                           
kubectl create job hello-job --image=busybox --dry-run=client -o yaml -- echo "Hello I am from job" > hello-job.yaml

kubectl create job my-job --image=alpine -- date

# https://k8s-school.fr/resources/en/blog/kubectl-run-deprecated/

# [NO LONGER VALID]
k run nginx --image=nginx --restart=OnFailure --schedule="* * * *" [cronJob]

# {replaced with}
k create cronjob pi --image=perl --schedule="0/5 * * * ?"  -- perl -Mbignum=bpi -wle 'print bpi(2000)'


# get
k get cronjobs.batch 
k get jobs.batch 