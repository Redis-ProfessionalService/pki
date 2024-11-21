```
# Valid until 
openssl x509  -in myserver.crt   -noout -text -nameopt sep_multiline


Certificate:
    Data:
        Version: 1 (0x0)
        Serial Number:
            71:1b:d5:b0:03:71:e3:2d:8a:91:f9:cd:5d:fd:86:75:5c:4a:0f:77
        Signature Algorithm: sha256WithRSAEncryption
        Issuer:
            C=AU
            ST=Some-State
            O=Internet Widgits Pty Ltd
        Validity
            Not Before: Nov 21 20:08:33 2024 GMT
            Not After : Jul 13 20:08:33 2049 GMT
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
        6f:35:f8:2f:d6:6e:f7:c6:99:13:a6:56:eb:bf:b9:06:9d:c0:
        77:46:f6:17:31:45:b2:16:b1:4b:97:26:ef:29:7f:5f:c9:3b:
        81:f5:88:bb:8d:e2:b6:43:de:cc:8c:14:85:b2:fc:df:dc:5a:
        a7:07:d3:a8:15:82:8e:a8:0a:a2:59:0c:7b:1a:41:a9:d1:8c:
        6e:96:0d:15:9d:74:67:ac:34:e7:ec:d5:3b:53:9f:46:c5:26:
        7d:6a:22:f0:5d:2c:69:7b:a9:43:68:76:59:3e:75:8b:5e:8e:
        44:b3:d2:7b:9f:98:ad:7e:57:c3:12:73:b2:87:63:d6:c5:36:
        87:49:20:2a:81:b7:28:6c:6f:08:17:47:cb:7c:fc:35:86:d1:
        82:7d:b7:5a:4c:cb:45:ad:01:da:47:94:56:32:5a:00:d3:01:
        ec:fe:e4:81:32:c0:68:0b:41:bd:da:f6:b7:03:3c:ab:7f:2d:
        34:52:e0:c3:a0:ac:de:15:43:32:15:f9:79:b5:ed:b1:1e:f7:
        4e:7a:2c:a7:aa:32:da:d3:83:e0:a1:12:11:e2:05:57:79:d5:
        98:8a:b6:45:ef:79:4d:b1:68:8a:7e:06:38:f8:be:29:d6:66:
        96:01:f3:e8:76:bc:3a:b0:7f:04:a2:15:8e:4c:6f:c9:21:12:
        c5:1a:0e:c2
```
