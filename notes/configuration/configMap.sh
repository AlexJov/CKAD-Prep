
# config maps
k create cm my-cm --from-literal=KEY-my-value
k create cm my-cm-2 --from-file=/my/file.txt
k create cm my-cm-3 --from-env-file=file.env

k describe cm my-cm

k get cm al-conf -o yaml

# print all env variables
kubectl exec -it nginx -- env

_____ 
# env <> envFrom

...
  containers:
    - name: test-container
      image: k8s.gcr.io/busybox
      command: [ "/bin/echo", "$(SPECIAL_LEVEL_KEY) $(SPECIAL_TYPE_KEY)" ]
      env:
        - name: SPECIAL_LEVEL_KEY
          valueFrom:
            configMapKeyRef:
              name: special-config
              key: SPECIAL_LEVEL

_____

...
  containers:
    - name: test-container
      image: k8s.gcr.io/busybox
      command: [ "/bin/sh", "-c", "env" ]
      envFrom:
      - configMapRef:
          name: special-config