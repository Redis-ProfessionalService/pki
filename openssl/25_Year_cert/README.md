```
openssl x509  -in myserver.crt   -noout -text -nameopt sep_multiline


Certificate:
    Data:
        Version: 1 (0x0)
        Serial Number:
            71:1b:d5:b0:03:71:e3:2d:8a:91:f9:cd:5d:fd:86:75:5c:4a:0f:76
        Signature Algorithm: sha256WithRSAEncryption
        Issuer:
            C=AU
            ST=Some-State
            O=Internet Widgits Pty Ltd
        Validity
            Not Before: Nov 21 20:03:39 2024 GMT
            Not After : Nov 21 20:03:39 2025 GMT
        Subject:
            C=CH
            O=Example University
            CN=*.pki-redis.com
        Subject Public Key Info:
            Public Key Algorithm: rsaEncryption
                Public-Key: (2048 bit)
                Modulus:
                    00:e0:0a:07:8b:43:1a:ee:8a:95:81:f1:00:15:80:
                    c9:34:84:6c:9f:65:39:3f:af:76:a0:c8:3d:14:20:
                    05:85:f2:21:1d:36:02:3f:d6:4e:c6:ef:9e:7c:12:
                    22:82:c4:bc:f8:ff:34:6b:10:f3:09:4e:66:4b:4c:
                    59:6f:a1:3c:c2:1a:ef:7c:b4:0a:34:0a:5c:2d:50:
                    20:c6:bc:14:2d:5d:7f:90:7e:aa:15:fb:ea:db:dd:
                    e1:25:05:9f:c6:b6:ef:da:c5:3c:f9:a7:0d:17:ce:
                    33:7f:93:17:98:2b:23:62:b4:d8:b7:cd:38:5a:a8:
                    cb:26:1a:23:2c:ae:41:20:cf:97:b5:65:af:2a:b5:
                    6a:70:0c:62:2b:8f:7f:dd:e4:fe:96:74:a7:62:19:
                    e7:99:33:6e:4f:32:1b:a6:c6:75:f0:05:71:09:d0:
                    da:69:ee:b0:4a:a6:58:85:e3:e1:cc:08:b8:3e:a6:
                    dd:7f:ce:5c:4f:b7:a2:37:12:b8:c6:c1:ac:56:55:
                    5b:86:02:35:01:e8:27:2a:01:19:ca:ac:d7:81:3b:
                    aa:aa:de:c0:e8:ca:94:74:e6:6e:47:7d:26:ae:d3:
                    29:b2:99:45:05:d4:0d:a4:43:af:5e:46:1a:91:a9:
                    57:b2:73:cf:27:55:5b:d2:61:17:23:b4:10:1c:15:
                    f5:83
                Exponent: 65537 (0x10001)
    Signature Algorithm: sha256WithRSAEncryption
    Signature Value:
        b8:c7:3c:18:3b:f6:4e:21:1a:f5:99:04:33:b8:52:c8:58:ab:
        58:45:f1:cc:26:3f:45:d9:56:61:5e:f1:14:3b:d9:01:af:d0:
        b3:cb:93:56:1c:96:ea:04:37:2b:22:81:62:24:1f:75:8e:38:
        2d:c9:ab:32:28:f7:f3:50:65:52:83:b6:25:a7:0e:6f:4d:ef:
        5b:fb:fb:60:02:7b:61:41:ed:b7:47:d2:6d:dc:91:87:47:cf:
        9e:d3:d5:3f:61:84:2b:26:39:46:13:e2:fc:4c:92:35:3a:20:
        5d:43:ff:20:be:45:6c:80:91:62:40:c5:38:36:52:8c:a4:c9:
        0a:08:8f:29:ca:d1:50:4c:58:a4:d5:1e:8e:1a:5d:9c:b1:66:
        1d:00:2d:5f:0d:bb:f9:b6:34:0d:5c:0c:30:f8:e7:c2:b5:be:
        a9:a7:ab:7d:e7:0a:67:95:f3:22:85:35:e8:c1:50:7c:b0:1e:
        d1:2f:af:22:eb:bb:5c:b1:9d:aa:80:f1:a9:1d:1c:f8:07:9e:
        ae:14:67:8e:59:16:14:7e:af:c2:34:07:7b:20:03:fa:ba:63:
        05:18:91:b0:ed:3f:82:dc:94:80:0a:7a:e9:60:a3:72:ef:f9:
        ba:f4:0a:b1:5c:37:aa:50:06:22:76:83:da:03:6a:25:69:aa:
        0a:72:78:87
```
