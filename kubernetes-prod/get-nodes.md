- До обновления:
```bash
root@master:/home/tuturu# kubectl get nodes -o wide
NAME      STATUS   ROLES           AGE     VERSION   INTERNAL-IP   EXTERNAL-IP   OS-IMAGE             KERNEL-VERSION     CONTAINER-RUNTIME
master    Ready    control-plane   37m     v1.33.6   10.128.0.19   <none>        Ubuntu 24.04.3 LTS   6.8.0-87-generic   containerd://2.1.5
worker1   Ready    <none>          2m49s   v1.33.6   10.128.0.7    <none>        Ubuntu 24.04.3 LTS   6.8.0-87-generic   containerd://2.1.5
worker2   Ready    <none>          2m41s   v1.33.6   10.128.0.11   <none>        Ubuntu 24.04.3 LTS   6.8.0-87-generic   containerd://2.1.5
worker3   Ready    <none>          2m37s   v1.33.6   10.128.0.20   <none>        Ubuntu 24.04.3 LTS   6.8.0-87-generic   containerd://2.1.5
```
- После обновления:
```bash
root@master:/home/tuturu# kubectl get nodes -o wide
NAME      STATUS   ROLES           AGE   VERSION   INTERNAL-IP   EXTERNAL-IP   OS-IMAGE             KERNEL-VERSION     CONTAINER-RUNTIME
master    Ready    control-plane   97m   v1.34.2   10.128.0.19   <none>        Ubuntu 24.04.3 LTS   6.8.0-87-generic   containerd://2.1.5
worker1   Ready    <none>          63m   v1.34.2   10.128.0.7    <none>        Ubuntu 24.04.3 LTS   6.8.0-87-generic   containerd://2.1.5
worker2   Ready    <none>          63m   v1.34.2   10.128.0.11   <none>        Ubuntu 24.04.3 LTS   6.8.0-87-generic   containerd://2.1.5
worker3   Ready    <none>          63m   v1.34.2   10.128.0.20   <none>        Ubuntu 24.04.3 LTS   6.8.0-87-generic   containerd://2.1.5
```
