
#### Create a root certificate
```
openssl genrsa -out ca.key 2048

openssl req -new -x509 -key ca.key -out ca.crt
```

#### create a server certificate using the csr.
```
openssl x509 -req -days 365 -in myserver.csr -CA ca.crt -CAkey ca.key -CAcreateserial -out myserver.crt  -extensions v3_req   -extensions SAN   -extfile <(cat /etc/ssl/openssl.cnf <(printf "[SAN]\nsubjectAltName=DNS:redis-12000.redis.local, DNS:redis-13000.redis.local"))
```

#### view the certificate

```
openssl x509  -in myserver.crt   -noout -text -nameopt sep_multiline
```

```
Certificate:
    Data:
        Version: 3 (0x2)
        Serial Number:
            38:8b:2b:9f:e8:1f:3a:e7:68:a1:c6:8b:c7:4d:b0:23:fd:b1:42:c5
        Signature Algorithm: sha256WithRSAEncryption
        Issuer:
            C=AU
            ST=Some-State
            O=Internet Widgits Pty Ltd
        Validity
            Not Before: Jun 27 03:11:28 2024 GMT
            Not After : Jun 27 03:11:28 2025 GMT
        Subject:
            C=CH
            O=Example University
            CN=redis.local
        Subject Public Key Info:
            Public Key Algorithm: rsaEncryption
                Public-Key: (2048 bit)
                Modulus:
                    00:a3:06:dc:5e:f9:30:84:3d:e5:54:11:85:73:62:
                    c0:aa:f3:aa:c0:1d:00:56:bf:4f:26:dc:1c:29:05:
                    a3:95:a3:fb:bf:d7:42:a0:de:4d:bc:77:1f:ea:38:
                    56:cf:ec:a2:3a:91:38:85:9b:2d:1b:91:e6:e1:a8:
                    0d:46:a3:08:e7:20:4a:fe:30:15:64:9d:96:8a:bb:
                    2f:bb:a1:16:6a:17:f6:e6:61:40:ee:39:48:e4:36:
                    11:1a:b9:f7:81:79:1f:61:8a:9a:97:c1:83:73:10:
                    08:ad:d9:2e:a6:59:ef:2f:a3:c1:d2:e2:43:e4:ee:
                    91:3e:09:46:1e:df:be:cf:64:27:88:6d:0f:d4:b3:
                    1c:1c:e2:b8:54:2c:8b:2e:a5:30:76:54:40:f4:09:
                    0a:1b:b1:42:11:a1:fc:06:c4:89:c5:7d:35:ad:89:
                    dc:36:75:96:c4:9d:cc:c3:4a:a4:b8:98:81:85:d3:
                    2a:ef:71:51:c2:e3:bb:17:38:26:dd:f4:ec:b2:4f:
                    19:6d:56:a3:28:77:e7:ae:6e:03:65:53:6a:da:3e:
                    d4:18:24:bf:99:e2:0a:ec:a9:f0:8b:bd:12:29:b9:
                    c1:be:dc:d8:ee:fd:1b:e7:b8:c6:fa:f7:9b:bd:7d:
                    88:0a:63:a0:2a:9f:8a:d9:8e:5e:74:ae:ee:bd:a3:
                    78:ad
                Exponent: 65537 (0x10001)
        X509v3 extensions:
            X509v3 Subject Alternative Name: 
                DNS:redis-12000.redis.local, DNS:redis-13000.redis.local
            X509v3 Subject Key Identifier: 
                27:96:13:51:B7:6C:24:38:EE:F2:31:6B:70:34:D8:EC:93:13:AB:05
            X509v3 Authority Key Identifier: 
                6D:CB:38:F5:11:6C:90:41:28:BE:FF:F7:D4:17:68:78:B9:90:F5:A0
    Signature Algorithm: sha256WithRSAEncryption
    Signature Value:
        75:15:74:75:01:f1:d0:e7:81:8a:2a:74:9a:83:d2:44:51:5d:
        f9:6d:cb:0b:cf:9b:27:2e:fd:42:76:24:13:fe:2d:f8:02:1c:
        0e:92:44:60:ab:5c:ad:e7:f8:45:4f:cc:f5:61:20:c4:64:74:
        e8:fe:02:86:a5:fa:e5:4c:2b:da:8f:fe:0f:5d:44:90:42:ae:
        bf:f3:86:24:13:99:57:8f:a7:d9:a0:9b:80:6f:37:c4:5b:ba:
        78:10:f1:f3:7f:78:ef:8e:65:25:f4:81:1e:15:56:4d:37:67:
        fb:d3:fa:27:43:bf:78:ed:5d:eb:cd:c9:5a:67:95:45:95:0a:
        8e:29:d6:53:56:5c:e5:cc:ff:0d:25:3c:82:ad:f5:59:ca:69:
        a6:ad:55:f3:b7:1e:f0:62:35:35:73:8c:5b:41:f6:4f:2a:a5:
        b1:70:28:47:9b:fd:35:31:24:db:06:99:ff:37:7a:7b:fa:54:
        89:de:0a:66:e8:bb:b5:b2:fe:2c:31:8d:d1:25:12:ae:fe:b8:
        99:bb:b8:90:85:4f:88:2c:43:04:15:72:6e:59:e2:bd:de:4b:
        f9:5d:cc:b3:a5:11:48:b1:31:33:61:82:0b:fa:27:f4:c5:6d:
        bd:cf:fe:5b:37:14:e0:c2:50:1f:ee:be:a2:9d:67:87:28:51:
        f4:b4:95:94
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

```
echo | openssl s_client -showcerts  -connect  localhost:9443  2>/dev/null | openssl x509 -text
```

```
curl -v --cacert ca.crt  https://redis.local:9443/v1/cluster  --resolve redis.local:9443:127.0.0.1
```

```
redis-cli -h redis-12000.redis.local -p 12000 --tls --cacert ca.crt 
```

