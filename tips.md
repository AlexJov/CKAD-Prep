General tips:

- learn vi shortcuts (search, next, visual mode, yank, insert row above, ...)
- use short resource names (po, rs, deploy, svc, netpol, ...)
- create kubectl alias and auto-complete
- create documentation bookmarks (and learn docs structure - Concepts and Tasks)
- use imperative commands
- go through kubectl commands in detail (in additionalResources)
- do not get stuck - attempt all questions
- refer to curriculum while studying (no need to go through ReplicaSets & IngressController)
___
alias k=kubectl
complete -F __start_kubectl k

Autocomplete is enabled for you in the exam, but it will not work if you have the k=kubectl alias set. 
One of the first things I did in the exam was to add complete -F __start_kubectl k command to ~/.bashrc

For example, if I need to quickly delete a pod called webone, I’d type: k del<tab-key> po we<tab-key> --for<tab-key> --gr<tab-key> 0. 
This translates to k delete po webone --force —-grace-period 0
____
Persistent Volumes: Practice this Persistent Volume question thoroughly: 
https://kubernetes.io/docs/tasks/configure-pod-container/configure-persistent-volume-storage/

 I will, however, recommend that you practice this on a cluster with 2 or more worker nodes for the following reasons: 
 i) SSH into any of the nodes and create the said file 
 ii) You need to sudo -i to be able to create files in some directories such /etc/, /opt/ etc. 
 iii) Type exit to return to the master node iv) 

Ensure that the nginx pod is scheduled on the intended node by using either nodeName (this is faster), nodeSelector or nodeAffinity.
____
Always return: You’d need to use sudo -i to be able to create or edit files in certain directories, 
remember to type exit when done. Always remember to return to the master node.
_____
Use ~/.bashrc:

    alias k=kubectl
    complete -F __start_kubectl k
    alias kns=’k config set-context --current --namespace  ’ # SPACE!
    alias kgc='k get po -l x=y' # false statement to return no resources, only to get namespace name
    dr='--dry-run=client -o yaml' # no alias! use as variable!!! $dr

Don’t forget to reload your terminal by typing 'source ~/.bashrc'
____
Namespaces: When you switch to a new cluster, notice that the namespace doesn’t change automatically to the default namespace. 
This is so important. So be sure to return to the default namespace if the question does not specify a namespace. kns default
____
 Deployment Strategy: There is no mention of deployment strategy in any of the practice resources I mentioned above, including CKAD Exercises. 
 Learn the two types of deployment strategies — Recreate and Rolling update. Know how to change maxUnavailable and maxSurge values. 
 Practice how to avoid downtime by combining rolling update with readinesssProbe and livenessProbe