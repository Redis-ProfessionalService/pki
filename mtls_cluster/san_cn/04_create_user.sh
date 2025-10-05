source 00_env.sh

curl -k -v -u "$USERNAME:$PASSWORD" \
  -X POST "https://${URL}:9443/v1/users" \
  -H "Content-Type: application/json" \
  -d "{
    \"auth_method\": \"certificate\",
    \"certificate_subject_line\": \"CN=${CN}\",
    \"email\": \"${CERT_ADMIN_USER_EMAIL}\",
    \"email_alerts\": true,
    \"name\": \"${CERT_ADMIN_USER}\",
    \"role_uids\": [1]
  }"

