
https://github.com/GoogleCloudPlatform/community/blob/master/archived/nginx-ingress-gke/index.md


```
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo update
```
```
## install nginx-ingress 
helm install nginx-ingress ingress-nginx/ingress-nginx --set "controller.extraArgs.enable-ssl-passthrough=true"

```

```
kubectl get services

NAME                                               TYPE           CLUSTER-IP       EXTERNAL-IP     PORT(S)                      AGE
nginx-ingress-ingress-nginx-controller             LoadBalancer   34.118.231.16    34.136.130.94   80:32298/TCP,443:30366/TCP   13m

```


