

# deployment dry-run
k create deployment my-deploy --image=nginx --replicas=4 --dry-run=client -o yaml > dep.yml


kubectl scale deploy hoth --replicas=4  -n planets

kubectl set image deploy hoth httpd=httpd:2.4.46 

kubectl edit deployment my-deployment

kubectl rollout undo deploy webapp --to-revision=3

k describe deploy webapp | grep Image

k describe deploy webapp | grep -A3 Container # inclide 3 lines After match