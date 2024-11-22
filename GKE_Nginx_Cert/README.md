
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

kubectl get secrets nginx-ingress-ingress-nginx-admission -o yaml
```

```

apiVersion: v1
data:
  ca: LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUJkakNDQVJ1Z0F3SUJBZ0lRTUEvRzBjWGRDNFYybkZSaDI2YXp5REFLQmdncWhrak9QUVFEQWpBUE1RMHcKQ3dZRFZRUUtFd1J1YVd3eE1DQVhEVEkwTVRFeU1USXdORGMxTWxvWUR6SXhNalF4TURJNE1qQTBOelV5V2pBUApNUTB3Q3dZRFZRUUtFd1J1YVd3eE1Ga3dFd1lIS29aSXpqMENBUVlJS29aSXpqMERBUWNEUWdBRTBKZXduMjNBCjdJMUMyTnYvUWpvMFE1b0g0TytRZ0ZoWTVyS2hjQVlSZU8vL2JWWjNGMGtFaHlOVVpxK1VzYjNmQkFpREE5UHoKcEtUSEE2bEZEaVIxOUtOWE1GVXdEZ1lEVlIwUEFRSC9CQVFEQWdJRU1CTUdBMVVkSlFRTU1Bb0dDQ3NHQVFVRgpCd01CTUE4R0ExVWRFd0VCL3dRRk1BTUJBZjh3SFFZRFZSME9CQllFRkszMndSc2Y0WkJWZGlmWUdUYkY5bHRMCkhMdEZNQW9HQ0NxR1NNNDlCQU1DQTBrQU1FWUNJUUQwMDRqWS8wbGN0MjNxSVdtajZqT3RDcjFOVGdlMmdZczkKaUJvNkE3UGd1d0loQVBFVm41bnZQL1cxbkRTSU5sZVlvSlNlUWRvMXRZcVVNVndVcTZ6c3JtaHAKLS0tLS1FTkQgQ0VSVElGSUNBVEUtLS0tLQo=
  cert: LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUJ6ekNDQVhhZ0F3SUJBZ0lRVWV4MEw0b0lzOGtES3FBMFBoZ0J6REFLQmdncWhrak9QUVFEQWpBUE1RMHcKQ3dZRFZRUUtFd1J1YVd3eE1DQVhEVEkwTVRFeU1USXdORGMxTWxvWUR6SXhNalF4TURJNE1qQTBOelV5V2pBUApNUTB3Q3dZRFZRUUtFd1J1YVd3eU1Ga3dFd1lIS29aSXpqMENBUVlJS29aSXpqMERBUWNEUWdBRUcvZFN6R0lwCklpR3J4NmEvT3JqcDJDWlRzckJlSE1vWkxsbmFqV0hYZkRuR0s3U0lQbVIxcitlUFNNUk5FeGsydlpuWHozYVoKbmhmODdoYkFzUmtmSTZPQnNUQ0JyakFPQmdOVkhROEJBZjhFQkFNQ0JhQXdFd1lEVlIwbEJBd3dDZ1lJS3dZQgpCUVVIQXdFd0RBWURWUjBUQVFIL0JBSXdBREI1QmdOVkhSRUVjakJ3Z2pCdVoybHVlQzFwYm1keVpYTnpMV2x1ClozSmxjM010Ym1kcGJuZ3RZMjl1ZEhKdmJHeGxjaTFoWkcxcGMzTnBiMjZDUEc1bmFXNTRMV2x1WjNKbGMzTXQKYVc1bmNtVnpjeTF1WjJsdWVDMWpiMjUwY205c2JHVnlMV0ZrYldsemMybHZiaTVrWldaaGRXeDBMbk4yWXpBSwpCZ2dxaGtqT1BRUURBZ05IQURCRUFpQmw4NVgwSEZ2ZGFmeTJoeENqT3l4dEQvODlYTmxxUkZ3KzdEZWVmVXZ3CmFRSWdWeFdzL1habUtnTGRmakxkV3ovbDdKSlZ5VEF5OStZWkt4QTFDWkVYSUIwPQotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCg==
  key: LS0tLS1CRUdJTiBFQyBQUklWQVRFIEtFWS0tLS0tCk1IY0NBUUVFSUNINUJqcVp0UlN3ZWZWVGlnTVVMNnZONGR2RUZic2RSZzM2YUJ0cjcxSG1vQW9HQ0NxR1NNNDkKQXdFSG9VUURRZ0FFRy9kU3pHSXBJaUdyeDZhL09yanAyQ1pUc3JCZUhNb1pMbG5haldIWGZEbkdLN1NJUG1SMQpyK2VQU01STkV4azJ2Wm5YejNhWm5oZjg3aGJBc1JrZkl3PT0KLS0tLS1FTkQgRUMgUFJJVkFURSBLRVktLS0tLQo=
kind: Secret

```

```
## get the base64 form ca field and unpach it gke_ca.crt 
echo "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUJkakNDQVJ1Z0F3SUJBZ0lRTUEvRzBjWGRDNFYybkZSaDI2YXp5REFLQmdncWhrak9QUVFEQWpBUE1RMHcKQ3dZRFZRUUtFd1J1YVd3eE1DQVhEVEkwTVRFeU1USXdORGMxTWxvWUR6SXhNalF4TURJNE1qQTBOelV5V2pBUApNUTB3Q3dZRFZRUUtFd1J1YVd3eE1Ga3dFd1lIS29aSXpqMENBUVlJS29aSXpqMERBUWNEUWdBRTBKZXduMjNBCjdJMUMyTnYvUWpvMFE1b0g0TytRZ0ZoWTVyS2hjQVlSZU8vL2JWWjNGMGtFaHlOVVpxK1VzYjNmQkFpREE5UHoKcEtUSEE2bEZEaVIxOUtOWE1GVXdEZ1lEVlIwUEFRSC9CQVFEQWdJRU1CTUdBMVVkSlFRTU1Bb0dDQ3NHQVFVRgpCd01CTUE4R0ExVWRFd0VCL3dRRk1BTUJBZjh3SFFZRFZSME9CQllFRkszMndSc2Y0WkJWZGlmWUdUYkY5bHRMCkhMdEZNQW9HQ0NxR1NNNDlCQU1DQTBrQU1FWUNJUUQwMDRqWS8wbGN0MjNxSVdtajZqT3RDcjFOVGdlMmdZczkKaUJvNkE3UGd1d0loQVBFVm41bnZQL1cxbkRTSU5sZVlvSlNlUWRvMXRZcVVNVndVcTZ6c3JtaHAKLS0tLS1FTkQgQ0VSVElGSUNBVEUtLS0tLQo=" | base64 -d  > gke_ca.crt 
```

```
### Dump the certificate
openssl x509  -in gke_ca.crt    -noout -text -nameopt sep_multiline
```

```
Certificate:
    Data:
        Version: 3 (0x2)
        Serial Number:
            30:0f:c6:d1:c5:dd:0b:85:76:9c:54:61:db:a6:b3:c8
        Signature Algorithm: ecdsa-with-SHA256
        Issuer:
            O=nil1
        Validity
            Not Before: Nov 21 20:47:52 2024 GMT
            Not After : Oct 28 20:47:52 2124 GMT
        Subject:
            O=nil1
        Subject Public Key Info:
            Public Key Algorithm: id-ecPublicKey
                Public-Key: (256 bit)
                pub:
                    04:d0:97:b0:9f:6d:c0:ec:8d:42:d8:db:ff:42:3a:
                    34:43:9a:07:e0:ef:90:80:58:58:e6:b2:a1:70:06:
                    11:78:ef:ff:6d:56:77:17:49:04:87:23:54:66:af:
                    94:b1:bd:df:04:08:83:03:d3:f3:a4:a4:c7:03:a9:
                    45:0e:24:75:f4
                ASN1 OID: prime256v1
                NIST CURVE: P-256
        X509v3 extensions:
            X509v3 Key Usage: critical
                Certificate Sign
            X509v3 Extended Key Usage: 
                TLS Web Server Authentication
            X509v3 Basic Constraints: critical
                CA:TRUE
            X509v3 Subject Key Identifier: 
                AD:F6:C1:1B:1F:E1:90:55:76:27:D8:19:36:C5:F6:5B:4B:1C:BB:45
    Signature Algorithm: ecdsa-with-SHA256
    Signature Value:
        30:46:02:21:00:f4:d3:88:d8:ff:49:5c:b7:6d:ea:21:69:a3:
        ea:33:ad:0a:bd:4d:4e:07:b6:81:8b:3d:88:1a:3a:03:b3:e0:
        bb:02:21:00:f1:15:9f:99:ef:3f:f5:b5:9c:34:88:36:57:98:
        a0:94:9e:41:da:35:b5:8a:94:31:5c:14:ab:ac:ec:ae:68:69
```

