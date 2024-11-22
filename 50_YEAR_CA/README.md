

###  <a href="cacert.crt"> root certificate </a>
<details>
  <summary>root certificate</summary>

```
  openssl x509  -in cacert.crt      -noout -text -nameopt sep_multiline

Certificate:
    Data:
        Version: 3 (0x2)
        Serial Number:
            38:fb:79:33:e9:ca:fa:fa:ba:36:f3:02:96:60:a0:77:c6:26:d7:b3
        Signature Algorithm: sha256WithRSAEncryption
        Issuer:
            C=US
            ST=IL
            L=Chicago
            O=pki redis
            CN=pki-redis.com
        Validity
            Not Before: Nov 22 16:49:13 2024 GMT
            Not After : Mar  5 16:49:13 2074 GMT
        Subject:
            C=US
            ST=IL
            L=Chicago
            O=pki redis
            CN=pki-redis.com
        Subject Public Key Info:
            Public Key Algorithm: rsaEncryption
                Public-Key: (2048 bit)
                Modulus:
                    00:cf:46:08:67:89:b4:33:95:4c:7d:d3:22:5e:32:
                    df:c7:72:62:92:dd:da:31:15:94:46:84:d4:55:48:
                    3b:06:d3:61:a3:54:ab:2e:5e:6b:c6:d5:7a:78:03:
                    18:f2:8e:53:95:bd:f4:bd:0e:81:c9:24:ae:47:a2:
                    b4:22:f4:37:73:0b:4a:94:fd:2e:4d:9c:be:70:ca:
                    00:46:dd:2a:f5:c5:b4:c5:65:12:07:c9:9c:3b:6a:
                    df:12:84:72:66:d9:a4:d5:53:3f:13:47:47:b6:40:
                    c0:f3:23:40:3f:82:0b:bc:3b:e6:12:c2:b2:b4:f7:
                    53:5f:8a:49:87:69:13:a5:3f:01:3c:d6:cc:fc:c4:
                    7c:be:12:47:f9:2c:a8:b9:fd:ef:0b:33:ab:7b:a5:
                    1b:a1:5c:6a:61:e8:9b:e7:60:0d:46:7f:7f:82:a1:
                    8e:f5:ed:bb:63:d3:e6:27:87:40:ab:e4:a6:a5:54:
                    19:1c:6b:f3:f4:93:1b:63:cd:cf:92:04:50:fd:74:
                    a0:08:b4:cd:24:d5:f2:86:f9:81:a1:f4:78:1d:78:
                    47:23:2e:3d:65:88:b7:d3:af:7e:6f:59:bc:7a:50:
                    c2:74:1c:04:e6:aa:d3:e8:2c:67:9a:f6:63:7a:32:
                    d9:55:dd:49:a3:fc:c2:52:d0:8a:f2:0e:93:7d:d7:
                    f7:9b
                Exponent: 65537 (0x10001)
        X509v3 extensions:
            X509v3 Subject Key Identifier: 
                C0:CC:5E:E5:59:09:A7:F8:C9:88:4E:55:12:62:01:1C:23:B8:51:B3
            X509v3 Authority Key Identifier: 
                C0:CC:5E:E5:59:09:A7:F8:C9:88:4E:55:12:62:01:1C:23:B8:51:B3
            X509v3 Basic Constraints: critical
                CA:TRUE
    Signature Algorithm: sha256WithRSAEncryption
    Signature Value:
        21:17:2a:24:01:47:44:05:4c:1b:ca:52:a1:3f:ed:fe:0e:ac:
        f1:69:ca:24:33:e2:cf:87:a4:f3:e4:26:7b:9a:e2:24:74:ac:
        0f:89:e9:c5:08:23:85:3a:28:a8:6e:6c:80:37:93:00:35:ef:
        29:7e:1f:ae:a7:88:17:51:89:36:99:ea:78:4b:79:83:6a:9d:
        07:9b:8c:97:a3:1c:69:e8:ae:b8:47:e4:20:0e:c7:c5:01:a0:
        ac:ca:69:ae:e0:09:1a:66:0f:6f:38:ad:4c:54:a6:e4:8a:37:
        f9:e4:40:9d:69:0f:60:14:77:a0:32:7a:b8:52:34:26:90:07:
        a6:dc:86:e0:e1:46:f7:54:7c:cb:a5:66:18:06:7c:58:6b:35:
        03:18:45:31:cc:03:8b:29:1d:1e:95:14:2a:da:6e:da:a5:e8:
        c6:96:4b:74:46:60:0b:3c:2b:6f:2e:58:fd:3d:5e:ee:b1:25:
        b3:92:c7:5b:ca:fa:f6:d6:b0:e9:39:9a:44:75:3e:7f:69:e3:
        dc:bc:b4:5f:21:56:ca:8b:41:e3:59:3e:c0:98:87:cb:c0:83:
        b2:dc:7e:8a:8a:cb:98:d0:2c:35:90:be:91:1c:74:80:d4:92:
        dc:cc:03:dd:c2:0c:19:3d:40:a7:cc:de:5d:6b:5a:19:69:8b:
        16:a3:1b:bc

```

</details>

### <a href="cmyserver.crt"> server certificate </a>
<details>
  <summary>server certificate</summary>

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

</details>
  







