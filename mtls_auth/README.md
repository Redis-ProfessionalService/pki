

#### how to login to the database with "abc-user" using certificate
```
redis-cli -p 13000 --tls --insecure  --cert  abc_leaf_chain.crt   --key abc_leaf.key
ACL WHOAMI
```
#### Output 
```
"abc-user"
```
