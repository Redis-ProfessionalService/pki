
##### refer to myserver.cnf
##### Line 8 should have the CN as FQDN for the cluster.
##### Line 18 should have Subject Alternative Name( SaN), for example wildcard  (*.redis.local) or list of individual endpoint for the database. 

```
Line 8: FQDN = redis.local

Line 18: ALTNAMES = DNS:$FQDN , DNS:redis-12000.redis.local #, DNS: *.redis.local
```

### How to create a CSR with OpenSSL
```
touch myserver.key
chmod 600 myserver.key
openssl req -new -config myserver.cnf -keyout myserver.key -out myserver.csr
```

### 

```
openssl req -in myserver.csr -noout -text -nameopt sep_multiline
```

```
Certificate Request:
    Data:
        Version: 1 (0x0)
        Subject:
            C=CH
            O=Example University
            CN=redis.local
        Subject Public Key Info:
            Public Key Algorithm: rsaEncryption
                Public-Key: (2048 bit)
                Modulus:
                    00:bf:81:e9:a4:0b:29:36:ef:61:02:09:f6:f1:c9:
                    9e:78:e6:9e:3d:74:bb:ff:a5:1e:ba:a8:a2:1d:95:
                    b4:8b:8a:2b:f6:ba:31:ab:37:1f:e4:ef:f7:44:ac:
                    5c:73:69:9c:ce:02:59:cd:b6:24:19:48:a3:c6:bc:
                    ae:fc:9a:0b:5e:50:12:a2:ee:c8:0f:07:15:6e:f8:
                    9d:ea:95:2f:c1:49:e2:68:93:31:52:a9:97:fe:8c:
                    c1:6c:39:17:2e:94:81:0b:f7:74:7c:0f:1d:59:89:
                    f9:7f:11:1b:90:29:a1:ed:67:30:19:9e:4d:e3:69:
                    b2:fc:34:bf:6f:6e:e7:d3:04:4f:f7:1f:8a:53:0c:
                    9a:c7:f3:9d:c6:72:89:77:4e:78:09:c0:ae:c5:90:
                    f6:bb:fe:6a:e9:2b:d0:27:ff:ab:8e:dc:fc:3d:b1:
                    d7:38:7d:31:57:01:5e:43:78:b0:1e:a8:b9:9e:24:
                    26:d4:fb:78:a1:35:45:3a:d2:be:72:7e:e5:1e:ad:
                    b8:fc:19:04:e4:c3:ea:b6:88:5a:e4:04:34:9f:c5:
                    0d:28:ba:23:c1:6a:bc:2d:ba:0a:40:c8:97:1c:9d:
                    2d:59:11:a1:e8:6f:2d:c3:9a:8e:e8:74:a0:bf:de:
                    31:fd:89:a0:d8:1c:0a:be:61:8b:a5:48:c2:3a:9b:
                    04:49
                Exponent: 65537 (0x10001)
        Attributes:
            Requested Extensions:
                X509v3 Subject Alternative Name: 
                    DNS:redis.local, DNS:redis-12000.redis.local
    Signature Algorithm: sha256WithRSAEncryption
    Signature Value:
        78:c6:6f:3f:fb:62:ad:e8:fe:27:21:2d:81:ca:d2:b8:90:82:
        cd:47:3b:ed:e9:72:32:fc:7e:85:ce:60:21:a0:bf:fd:d6:95:
        b4:71:5b:c5:4f:26:85:08:e6:6e:9d:65:a9:68:16:8c:69:90:
        8f:96:70:95:51:25:62:5c:aa:84:8d:e1:b2:31:ba:8d:7d:14:
        1d:b7:5c:6b:57:43:00:a8:38:58:9d:6e:41:77:0d:9f:2d:94:
        9d:45:e0:0a:22:f1:b8:99:e1:13:b4:c9:a7:f5:20:86:9c:c4:
        85:05:e8:4e:ce:dd:13:36:f3:3b:ff:20:b0:b6:4d:45:ba:05:
        9d:05:b5:13:df:ca:9f:21:76:f5:b5:ca:b2:77:42:63:11:a3:
        0a:55:5d:d5:95:c3:8a:44:2b:59:1a:80:cb:af:a7:0b:26:ae:
        5b:97:ac:4e:24:6e:53:24:a4:15:b6:f2:73:fa:f0:08:9b:67:
        99:75:76:ca:5a:8a:6c:53:39:d2:af:4d:f4:1e:ae:9e:ce:bb:
        91:45:5d:de:29:61:e0:f4:2f:d1:57:23:ae:d4:6e:46:e4:3f:
        b1:29:96:f4:2c:42:01:31:7a:ad:c1:65:ab:c6:e7:2a:4c:a6:
        4c:ee:aa:82:ab:88:3d:be:20:0a:cb:68:3c:31:79:6e:40:68:
        18:74:c7:d6
```

##### the csr file should be sent to a CA for signed vertificate. 

