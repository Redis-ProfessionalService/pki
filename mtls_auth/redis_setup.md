### setup the env for cluser username and password
```
export USERNAME=admin@redis.com
export PASSWORD=1234
```

### Create an ACL (abc-acl) which is restricted to keys starts with abc prefix
```
curl -k -u "$USERNAME:$PASSWORD" -X POST \
-H "Content-Type: application/json" \
-d '{ "name": "abc-acl", "acl": "~abc +@all" }' \
https://localhost:9443/v1/redis_acls
```
#### Output
```
{"acl":"~abc +@all","max_version":"9999","min_version":"6.0","name":"abc","uid":2}
```


### Create a role
```
curl -k -u "$USERNAME:$PASSWORD" -X POST \
-H "Content-Type: application/json" \
-d '{"management":"none","name":"abc-role" }' \
https://localhost:9443/v1/roles

```

#### Output
```
{"management":"none","name":"abc-role","uid":2}
```
