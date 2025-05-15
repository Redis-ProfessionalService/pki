
# OpenSSL Certificate Chain Generation (Root CA → Intermediate CA → Leaf)

This guide walks through creating a 3-tier certificate chain using OpenSSL:

1. Root CA
2. Intermediate CA (abc_ca)
3. Leaf Certificate (abc_leaf)

---

## 🧾 Step 1: Create Root CA

### Generate Root Private Key
```bash
openssl genpkey -algorithm RSA -out root_ca.key
```
#### root_ca.cnf
```
[req]
default_bits = 2048
prompt = no
default_md = sha256
distinguished_name = dn

[dn]
C = US
CN = ANY

[req_ext]
basicConstraints = critical, CA:TRUE
extendedKeyUsage = clientAuth
```

### Create Self-Signed Root Certificate
```bash
openssl req -x509 -new -nodes -key root_ca.key -sha256 -days 3650 \
  -out root_ca.crt -config root_ca.cnf -extensions req_ext
```

### View Root Certificate
```bash
openssl x509 -in root_ca.crt -text
```

---

## 🧾 Step 2: Create Intermediate CA (abc_ca)

### Generate Intermediate Private Key
```bash
openssl genpkey -algorithm RSA -out abc_ca.key
```
#### abc_ca.cnf
```
# abc_ca.cnf

[req]
default_bits = 2048
prompt = no
default_md = sha256
distinguished_name = dn

[dn]
C = US
CN = abc

[req_ext]
basicConstraints = critical, CA:TRUE
extendedKeyUsage = clientAuth
```
### Create CSR for Intermediate
```bash
openssl req -new -key abc_ca.key -out abc_ca.csr -config abc_ca.cnf
```

### Sign CSR with Root CA to Create Intermediate Certificate
```bash
openssl x509 -req -in abc_ca.csr -CA root_ca.crt -CAkey root_ca.key \
  -CAcreateserial -out abc_ca.crt -days 1825 -sha256 \
  -extfile abc_ca.cnf -extensions req_ext
```

### View Intermediate Certificate
```bash
openssl x509 -in abc_ca.crt -text
```

---

## 🔗 Step 3: Create Certificate Chain File

```bash
cat abc_ca.crt root_ca.crt > abc_ca_chain.crt
```

---

## 🧾 Step 4: Create Leaf Certificate (abc_leaf)

### Generate Leaf Private Key
```bash
openssl genpkey -algorithm RSA -out abc_leaf.key
```

#### abc_leaf.cnf
```
# abc_leaf.cnf

[req]
default_bits = 2048
prompt = no
default_md = sha256
distinguished_name = dn

[dn]
C = US
CN = abc

[req_ext]
basicConstraints = critical, CA:TRUE
extendedKeyUsage = clientAuth
```

### Create CSR for Leaf
```bash
openssl req -new -key abc_leaf.key -out abc_leaf.csr -config abc_leaf.cnf
```

### Sign CSR with Intermediate CA to Create Leaf Certificate
```bash
openssl x509 -req -in abc_leaf.csr -CA abc_ca.crt -CAkey abc_ca.key \
  -CAcreateserial -out abc_leaf.crt -days 1 -sha256 \
  -extfile abc_leaf.cnf -extensions req_ext
```

---

## 🔗 (Optional) Repeat Certificate Chain Creation

```bash
cat abc_ca.crt root_ca.crt > abc_ca_chain.crt
```

---

## ✅ Summary

You now have:
- Root CA (`root_ca.crt`)
- Intermediate CA (`abc_ca.crt`)
- Leaf Certificate (`abc_leaf.crt`)
- Certificate Chain (`abc_ca_chain.crt`)
