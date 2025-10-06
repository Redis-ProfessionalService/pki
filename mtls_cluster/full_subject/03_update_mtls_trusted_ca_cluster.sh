source 00_env.sh

read -r -d '' JSON_PAYLOAD <<EOF
{
  "mtls_certificate_authentication": true,
  "mtls_client_cert_subject_validation_type": "full_subject",
  "mtls_authorized_subjects": [
    {
      "CN": "$CN",
      "OU": ["$OU"],
      "O": "$O",
      "C": "$C",
      "L": "$L",
      "ST": "$ST"
    }
  ]
}
EOF

curl -k -u "$USERNAME:$PASSWORD" \
  -X PUT "https://${URL}:9443/v1/cluster" \
  -H "Content-Type: application/json" \
  -d "$JSON_PAYLOAD"
