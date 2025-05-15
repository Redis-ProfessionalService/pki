
### Create an ACL which restricted to keys starts with abc prefix
```
curl -k -u "<usrname>:<password>" -X POST \
-H "Content-Type: application/json" \
-d '{ "name": "abc", "acl": "~abc +@all" }' \
https://localhost:9443/v1/redis_acls
```
#### Output
```
{"acl":"~abc +@all","max_version":"9999","min_version":"6.0","name":"abc","uid":2}
```

