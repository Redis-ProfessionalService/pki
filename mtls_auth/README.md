
### Root CA
First off, we need a private key:
```
openssl genpkey -algorithm RSA -out root_ca.key
```

Now we need a certificate that will be signed by the private :
Our certificate configuration saved in a file named root_ca.cnf:

```
# root_ca.cnf

[req]
default_bits = 2048
prompt = no
default_md = sha256
distinguished_name = dn

[dn]
C = US
CN = ANY

[req_ext]
basicConstraints = critical, CA:TRUE
extendedKeyUsage = clientAuth

```

```
openssl req -x509 -new -nodes -key root_ca.key -sha256 -days 3650 -out root_ca.crt -config root_ca.cnf -extensions req_ext
openssl x509 -in root_ca.crt -text
```

### Intermediate ABC CA 
```
[req]
default_bits = 2048
prompt = no
default_md = sha256
distinguished_name = dn

[dn]
C = US
CN = ABC

[req_ext]
basicConstraints = critical, CA:TRUE
extendedKeyUsage = clientAuth
```

###I Generating the intermediate private key:
```
openssl genpkey -algorithm RSA -out abc_ca.key
```

```
openssl req -new -key abc_ca.key -out abc_ca.csr -config abc_ca.cnf
openssl x509 -req -in abc_ca.csr -CA root_ca.crt -CAkey root_ca.key -CAcreateserial -out abc_ca.crt -days 1825 -sha256 -extfile abc_ca.cnf -extensions req_ext

openssl x509 -in abc_ca.crt -text
```

```
cat abc_ca.crt  root_ca.crt > ca_chain.crt
```


### abc leaf crt
```
openssl genpkey -algorithm RSA -out abc_leaf.key

```

```
openssl req -new -key abc_leaf.key -out abc_leaf.csr -config abc_leaf.cnf
openssl x509 -req -in abc_leaf.csr -CA abc_ca.crt -CAkey abc_ca.key -CAcreateserial -out abc_leaf.crt -days 1825 -sha256 -extfile abc_leaf.cnf -extensions req_ext
```

```
cat abc_leaf.crt abc_ca.crt root_ca.crt > abc_leaf_chain.crt
```

```
redis-cli -p 13000 --tls --insecure  --cert  abc_leaf_chain.crt   --key abc_leaf.key
ACL WHOAMI  
```
