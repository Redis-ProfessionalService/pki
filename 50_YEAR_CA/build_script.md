```

openssl req -new -x509 -key ca.key -out ca.crt
openssl req -new -x509 -days 18000  -key ca.key -out cacert.crt

touch myserver.key
chmod 600 myserver.key
openssl req -new -config myserver.cnf -keyout myserver.key -out myserver.csr

openssl x509 -req -days 18000 -in myserver.csr \
-CA cacert.crt \
-CAkey ca.key \
-CAcreateserial \
-out myserver.crt \
-extensions v3_req   \
-extensions SAN   \
-extfile <(cat /etc/ssl/openssl.cnf <(printf "[SAN]\nsubjectAltName=DNS:pki-redis.com,DNS:*.pki-redis.com"))

``
