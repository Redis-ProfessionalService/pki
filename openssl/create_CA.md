
#### Create a root certificate
```
openssl genrsa -out ca.key 2048

openssl req -new -x509 -key ca.key -out ca.crt
```

#### create a server certificate using the csr.
```
openssl x509 -req -in myserver.csr -CA ca.crt -CAkey ca.key -CAcreateserial -out myserver.crt
```

#### view the certificate

```
openssl x509  -in myserver.crt   -noout -text -nameopt sep_multiline
```
