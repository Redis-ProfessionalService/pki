#### View the certificate on the redis API endpoint
```
openssl s_client -connect  localhost:9443

```

```
echo | openssl s_client -showcerts  -connect  localhost:9443  2>/dev/null | openssl x509 -text
```

#### access the API server
```
curl -v --cacert ca.crt  https://redis.local:9443/v1/cluster  --resolve redis.local:9443:127.0.0.1
```


#### access TLS enabled database
```
redis-cli -h redis-12000.redis.local -p 12000 --tls --cacert ca.crt 
```

#### add the root CA to OS CA chain

###ubuntu
```
cp ca.crt /usr/local/share/ca-certificates/
update-ca-certificates
```

#### You can access the TLS endpoint without --cacert option

```
curl -v   https://redis.local:9443/v1/cluster  --resolve redis.local:9443:127.0.0.1
redis-cli -h redis-12000.redis.local -p 12000 --tls
```
