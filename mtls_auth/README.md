
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
C = IL
ST = Tel-Aviv
L = Locality
O = RootCAOrg
OU = Security
CN = www.root-ca-org.com

[req_ext]
basicConstraints = critical, CA:TRUE

```

```
openssl req -x509 -new -nodes -key root_ca.key -sha256 -days 3650 -out root_ca.crt -config root_ca.cnf -extensions req_ext
openssl x509 -in root_ca.crt -text
```
