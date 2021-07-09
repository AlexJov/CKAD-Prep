# note!!! prectice vi

k config get-contexts
k config use-context minikube

k config set-context --current --namespace=dev

# copy to a notepad during exam!
k config set-context myxontext --namespace=mynamespace

# use explain
## describe all parameters
k explain cronjob.spec. ... --recursive

