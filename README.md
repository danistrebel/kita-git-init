# Idempotent Git Repo Initialization Container

Such that it can be used to initialize Git repos on empty directories or persistent volumes

```yaml
initContainers:
- args:
    - 'https://github.com/ramitsurana/awesome-kubernetes.git'
    image: danistrebel/kita-git-init
    imagePullPolicy: Always
    name: git-init-0
    volumeMounts:
        - mountPath: /git
          name: abc
```
