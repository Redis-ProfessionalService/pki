source 00_env.sh

curl -k -u "$USERNAME:$PASSWORD" \
  -X PUT "https://localhost:9443/v1/cluster" \
  -H "Content-Type: application/json" \
  -d "$(printf '{"mtls_certificate_authentication": true, "mtls_client_cert_subject_validation_type": "san_cn", "mtls_authorized_subjects": [ %s ] }' "$AUTH_SUBJECT")"
