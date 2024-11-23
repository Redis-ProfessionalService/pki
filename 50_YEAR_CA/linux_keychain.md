###ubuntu
#### add the root ca ( cacert.crt ) and issuing_ca to  /usr/local/share/ca-certificates/
#### run 
```
update-ca-certificates
```

###redhat
#### add the root ca (CA_cert.crt) and issuing_ca to /etc/pki/ca-trust/source/anchors/CA_cert.crt 
#### run 
```
update-ca-trust
```

