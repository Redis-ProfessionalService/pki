source 00_env.sh

curl -k -v -u "$USERNAME:$PASSWORD" \
  -X POST "https://localhost:9443/v1/users" \
  -H "Content-Type: application/json" \
  -d "{
    \"auth_method\": \"certificate\",
    \"certificate_subject_line\": \"CN=${CN}\",
    \"email\": \"cert_user@redis.com\",
    \"email_alerts\": true,
    \"name\": \"cert_user\",
    \"role_uids\": [1]
  }"
