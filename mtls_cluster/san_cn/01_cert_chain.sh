################  root CA ################
# key
openssl genrsa -out ca.key 4096

# 2. Generate a self-signed root certificate (valid e.g. 10 years)
openssl req -x509 -new -nodes -key ca.key -sha256 -days 3650 \
  -subj "/C=US/ST=Illinois/L=Chicago/O=MyOrg/OU=RedisCA/CN=MyRootCA" \
  -out ca.crt


openssl x509 -in ca.crt  -text 

################ server cert ################

openssl genrsa -out server.key 4096

openssl req -new -key server.key \
  -subj "/C=US/ST=Illinois/L=Chicago/O=MyOrg/OU=RedisServer/CN=redis.example.com" \
  -out server.csr


openssl x509 -req -in server.csr -CA ca.crt -CAkey ca.key -CAcreateserial \
  -out server.crt -days 365 -sha256   
  
#openssl x509 -in server.crt  -text 
openssl x509 -in client.crt -noout -subject
openssl req -in client.csr -noout -subject -nameopt multiline

################ create the chain ################
cat ca.crt server.crt > server_chain.crt  
