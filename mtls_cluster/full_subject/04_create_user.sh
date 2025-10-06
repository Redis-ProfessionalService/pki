source 00_env.sh

curl -k -v -u "$USERNAME:$PASSWORD" \
  -X POST "https://${URL}:9443/v1/users" \
  -H "Content-Type: application/json" \
  -d "{
    \"auth_method\": \"certificate\",
    \"certificate_subject_line\": \"CN=admin, OU=unit1, O=MyOrg, L=Chicago, ST=Illinois, C=US\",
    \"email\": \"${CERT_ADMIN_USER_EMAIL}\",
    \"email_alerts\": true,
    \"name\": \"${CERT_ADMIN_USER}\",
    \"role_uids\": [1]
  }"
