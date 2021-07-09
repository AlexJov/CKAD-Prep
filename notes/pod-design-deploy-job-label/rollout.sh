
# rolling updates and rollbacks

k rollout status deploy dep-1

k rollout history deploy dep-2

k set image deploy yavin nginx=nginx-error --record=true

k rollout undo deploy dep-2

# autoscale group
k autoscale deploy naboo --min=1 --max=5 --cpu-percent=80 --name=naboo

# HorizontalPodAutoscaler
k get hpa

k edit hpa naboo

# help
k explain hpa
