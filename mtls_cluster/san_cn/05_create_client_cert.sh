ource 00_env.sh

openssl genpkey -algorithm RSA -out client.key

openssl req -new -key client.key -subj "/CN=${CN}" -out client.csr

openssl x509 -req -in client.csr -CA server.crt -CAkey server.key \
  -CAcreateserial -out client.crt -days 1825 -sha256

openssl x509 -in client.crt  -text
