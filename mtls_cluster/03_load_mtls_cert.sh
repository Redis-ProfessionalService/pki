
jq -Rs --arg name "mtls_trusted_ca" '{name: $name, certificate: .}' < ca.crt \
| curl -k -v -u "$USERNAME:$PASSWORD" \
  -X PUT "https://localhost:9443/v1/cluster/update_cert" \
  -H "Content-Type: application/json" \
  -d @-

