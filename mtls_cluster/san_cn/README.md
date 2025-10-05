# mTLS Setup for Redis Cluster API

This repository contains shell scripts to automate the creation, configuration, and testing of **mutual TLS (mTLS)** authentication for a Redis cluster management API running on HTTPS port **9443**.

---

## 🧩 Overview

These scripts automate the following:

1. Generate a **Certificate Authority (CA)** and **server certificates**.
2. Load the trusted CA certificate into the Redis cluster API.
3. Enable mTLS and configure allowed client CNs.
4. Create a user associated with the client certificate.
5. Generate the **client certificate** signed by the server certificate.
6. Authenticate to the Redis cluster using the client certificate.

---

## 📁 File Descriptions

### `00_env.sh`
Defines reusable environment variables for all scripts.

```bash
export URL=localhost
export USERNAME=admin@redis.com
export PASSWORD=1234
export CN=admin
export CERT_ADMIN_USER=cert_admin_user
export CERT_ADMIN_USER_EMAIL=cert_admin_user@redis.com
```

---

### `01_cert_chain.sh`
Generates the **root CA**, **server certificate**, and **server certificate chain**.

Steps:
1. Create a 4096-bit RSA CA private key.
2. Generate a self-signed CA certificate valid for 10 years.
3. Create a 4096-bit server key and CSR.
4. Sign the CSR with the CA certificate to produce the server certificate.
5. Combine CA and server certs into `server_chain.crt`.

---

### `02_load_cert.sh`
Uploads the **trusted CA certificate chain** to the Redis cluster via REST API.

- Reads `server_chain.crt`
- Constructs a JSON payload with the certificate data
- Calls:
  ```bash
  PUT https://<URL>:9443/v1/cluster/update_cert
  ```

  #### For Redis Enterprise Software versions 7.22.2 and later, use:
  ```
   PUT /v1/cluster/certificates
  ```

---

### `03_update_mtls_trusted_ca_cluster.sh`
Enables **mTLS** in the Redis cluster and configures subject validation.

Sets:
- `mtls_certificate_authentication` → `true`
- `mtls_client_cert_subject_validation_type` → `"san_cn"`
- Authorizes CN(s) specified in `00_env.sh`

---

### `04_create_user.sh`
Creates a **certificate-based user** for mTLS login.

- Authentication method: `certificate`
- Email and CN linked to the client certificate
- Assigned `role_uids: [1]` (admin role)

API call:
```bash
POST https://<URL>:9443/v1/users
```

---

### `05_create_client_cert.sh`
Generates a **client certificate** signed by the **server certificate**.

Steps:
1. Generate RSA private key.
2. Create CSR for CN specified in `00_env.sh`.
3. Sign CSR with the server certificate and key.

Output:
- `client.key`
- `client.crt`

---

### `06_login_with_cert.sh`
Tests mTLS authentication by calling Redis cluster API using the client certificate.

```bash
curl -k -v https://${URL}:9443/v1/nodes   --cert client.crt --key client.key
```

---

## ▶️ Execution Order

Run scripts in the following order:

```bash
source 01_cert_chain.sh
source 02_load_cert.sh
source 03_update_mtls_trusted_ca_cluster.sh
source 04_create_user.sh
source 05_create_client_cert.sh
source 06_login_with_cert.sh
```

---

## 🔐 Result

Once complete:
- Redis cluster API will only accept HTTPS client connections with trusted certificates.
- A client with the `admin` CN and matching certificate can log in securely via mTLS.

---

## 🧾 Notes

- Ensure **`openssl`** and **`curl`** are installed.
- Default Redis API port: `9443`.
- Certificates are valid for:
  - CA: 10 years
  - Server: 1 year
  - Client: 5 years
- The process assumes a self-signed CA; for production, use an internal or trusted CA.

