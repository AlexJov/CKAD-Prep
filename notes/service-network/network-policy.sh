

# connect to svc secure-service on port 80 from pod
nc -z -v secure-service 80
k get netpol

k describe netpol deafult-deny