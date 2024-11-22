

### myserver.crt valid until  Mar  5 17:53:19 2074 GMT
```
openssl x509  -in myserver.crt      -noout -text -nameopt sep_multiline

Certificate:
    Data:
        Version: 3 (0x2)
        Serial Number:
            74:be:8f:fa:a7:ab:a0:2b:e9:bc:6e:82:21:6a:7e:5c:fb:c6:91:8e
        Signature Algorithm: sha256WithRSAEncryption
        Issuer:
            C=US
            ST=IL
            L=Chicago
            O=pki redis
            CN=pki-redis.com
        Validity
            Not Before: Nov 22 17:53:19 2024 GMT
            Not After : Mar  5 17:53:19 2074 GMT
        Subject:
            C=CH
            O=Example University
            CN=pki-redis.com
        Subject Public Key Info:
            Public Key Algorithm: rsaEncryption
                Public-Key: (2048 bit)
                Modulus:
                    00:dd:d1:ac:83:8d:4b:aa:cc:1b:e5:30:14:8a:38:
                    b9:92:06:c2:73:06:c1:90:3a:cb:76:33:0f:f4:0b:
                    15:e2:30:9f:8b:df:a7:bd:ff:20:e2:db:06:86:fd:
                    1b:72:ee:f2:f4:a7:fe:af:34:c8:e0:66:e5:5c:2a:
                    a5:71:0e:35:b3:96:1c:e6:b6:b1:39:0a:d8:f0:39:
                    27:72:dc:34:e9:10:82:6a:aa:1a:68:04:30:38:40:
                    4b:9f:93:a0:b3:6f:10:e3:fc:c8:c2:2f:45:f1:9f:
                    08:a9:26:17:f3:e5:d4:d9:f1:2f:32:52:ed:de:2b:
                    44:ef:85:50:f2:42:17:c3:9b:ef:cc:f9:26:ef:1e:
                    d9:ae:57:f7:9d:7e:c0:ae:0c:ac:fd:ac:27:8d:f6:
                    34:8e:23:55:8c:36:c4:fc:ba:6c:5b:68:fb:5d:c6:
                    98:76:71:87:c1:53:9b:50:2c:fe:00:69:f3:0b:4c:
                    5c:c5:5a:18:38:0d:62:ac:05:6a:f4:f5:7a:15:95:
                    42:5b:38:3f:c4:bd:da:b9:7b:15:8b:16:f6:34:11:
                    0c:4d:4f:6a:36:99:bf:1f:0f:9e:09:3f:33:3b:cb:
                    f6:82:03:6e:1a:b3:b0:ac:7e:64:cb:26:d8:2e:7c:
                    41:9c:a1:24:8e:c0:b0:92:b9:7a:70:26:cf:f8:79:
                    0e:95
                Exponent: 65537 (0x10001)
        X509v3 extensions:
            X509v3 Subject Alternative Name: 
                DNS:pki-redis.com, DNS:*.pki-redis.com
            X509v3 Subject Key Identifier: 
                94:72:4C:CB:B4:5F:0F:AE:E0:31:FF:A1:EA:E0:62:86:21:74:1D:36
            X509v3 Authority Key Identifier: 
                C0:CC:5E:E5:59:09:A7:F8:C9:88:4E:55:12:62:01:1C:23:B8:51:B3
    Signature Algorithm: sha256WithRSAEncryption
    Signature Value:
        6d:90:bd:21:5f:2b:ff:4b:4a:14:ad:fc:91:a4:54:34:c9:d7:
        be:02:4a:24:95:1c:d9:3b:07:d7:a1:1a:3c:53:32:9b:fd:4e:
        19:a4:25:2a:3a:62:ab:07:26:09:b4:e3:7f:fe:63:d1:36:3b:
        5d:e5:e2:14:49:6e:fb:b4:8d:69:f8:a2:e0:a2:82:c7:48:ad:
        09:5d:df:27:0e:38:9b:b0:4c:a8:bc:9f:4a:05:13:c5:9f:ab:
        20:78:ee:d2:62:a6:ab:21:be:07:55:ca:3d:90:98:7c:62:5f:
        93:d0:34:83:b7:1b:5a:bb:44:05:6c:8a:f8:90:71:69:9f:4a:
        23:47:d8:7b:be:ae:29:04:75:18:fa:21:e0:4d:9d:96:99:fc:
        a7:96:f5:f3:02:2b:26:0d:da:e8:cd:ff:d6:35:35:60:97:22:
        6a:5d:17:e8:02:93:20:59:e4:7b:18:ae:8e:f6:74:4a:8d:83:
        57:9a:a9:a4:39:d8:92:f5:56:81:07:70:e9:99:7f:42:47:47:
        c5:12:98:8a:50:6a:82:e9:f8:a8:be:94:53:97:c5:c1:28:76:
        13:ae:44:f9:c2:d3:99:e8:20:e7:d1:0d:7b:31:b6:7e:b5:bf:
        38:9a:eb:91:12:ee:51:3d:4b:ca:41:c3:8d:d1:12:91:78:0a:
        49:b4:0a:39
```





