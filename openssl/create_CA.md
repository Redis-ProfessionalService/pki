
#### Create a root certificate
```
openssl genrsa -out ca.key 2048

openssl req -new -x509 -key ca.key -out ca.crt
```

#### create a server certificate using the csr.
```
openssl x509 -req -days 365 -in myserver.csr -CA ca.crt -CAkey ca.key -CAcreateserial -out myserver.crt
```

#### view the certificate

```
openssl x509  -in myserver.crt   -noout -text -nameopt sep_multiline
```

#### upload the certificate to redis

```
rladmin cluster certificate set api certificate_file myserver.crt  key_file myserver.key
rladmin cluster certificate set cm certificate_file myserver.crt  key_file myserver.key
rladmin cluster certificate set proxy certificate_file myserver.crt  key_file myserver.key
rladmin cluster certificate set syncer certificate_file myserver.crt  key_file myserver.key
rladmin cluster certificate set metrics_exporter certificate_file myserver.crt  key_file myserver.key
```

#### View the certificate on the redis API endpoint
```
openssl s_client -connect  localhost:9443

```
