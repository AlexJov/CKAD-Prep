kubectl create quota myrq --hard=cpu=1,memory=1G,pods=2 --dry-run=client -o yaml
