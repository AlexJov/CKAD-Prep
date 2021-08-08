
# rolling updates and rollbacks

k rollout status deploy webapp

k rollout history deploy webapp

k rollout hisotry deploy webapp --revision=8

k set image deploy yavin nginx=nginx-error --record=true

k rollout undo deploy webapp
# pause
kubectl rollout pause deploy webapp


# autoscale group (!!!)
k autoscale deploy naboo --min=1 --max=5 --cpu-percent=80 --name=naboo
k autoscale deploy webapp --min=10 --max=20 --cpu-percent=85


# HorizontalPodAutoscaler
k get hpa

k edit hpa naboo

# help
k explain hpa
