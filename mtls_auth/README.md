
## Using certificate based authentication with RBAC with Redis Enterprise:
Allow customers to configure certificate based authentication with RBAC on a new/existing cluster for data plane - client to database authentication. <br>

A client certificate with a specific identity (e.g., C=US,CN=abc), and then configure Redis Enterprise to map this certificate to a user for authentication. <br>

This is for x.509 certificate-based authentication, where Redis Enterprise uses the certificate’s Subject DN (Distinguished Name) to identify and authorize the user.<br>

---
Redis Enterprise uses the subject line (e.g. C=US,CN=abc) from the client certificate to identify and associate the connection with a specific user.

- [Create certificate chaim with "C=US,CN=abc"](./cert_setup.md)
  

- Create a certificate based user and add the user and  certificate to a database.
```
    "auth_method": "certificate",
    "certificate_subject_line": "C=US,CN=abc",
```


#### How to login to the database with "abc-user" using certificate
```
redis-cli -p 13000 --tls --insecure  --cert  abc_leaf_chain.crt   --key abc_leaf.key
ACL WHOAMI
```
#### Output 
```
"abc-user"
```
