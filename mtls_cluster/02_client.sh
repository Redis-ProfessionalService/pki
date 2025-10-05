
openssl genpkey -algorithm RSA -out client.key

# abc_ca.cnf
cat > client.cnf <<'EOF'
[req]
default_bits = 2048
prompt = no
default_md = sha256
distinguished_name = dn

[dn]
C = US
CN = client01

[req_ext]
basicConstraints = critical, CA:TRUE
extendedKeyUsage = clientAuth
EOF

openssl req -new -key client.key -out client.csr -config client.cnf

openssl x509 -req -in client.csr -CA ca.crt -CAkey ca.key \
  -CAcreateserial -out client.crt -days 1825 -sha256 \
  -extfile client.cnf -extensions req_ext

