
```
curl -k -u "<usrname>:<password>" -X POST \
-H "Content-Type: application/json" \
-d '{ "name": "abc", "acl": "~abc +@all" }' \
https://localhost:9443/v1/redis_acls
```
