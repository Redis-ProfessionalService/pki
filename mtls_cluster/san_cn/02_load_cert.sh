source 00_env.sh

CERT_DATA=$(<server_chain.crt)
JSON_DATA=$(printf '{"name": "%s", "certificate": %s}' \
  "mtls_trusted_ca" \
  "$(printf '%s' "$CERT_DATA" | python3 -c 'import json,sys; print(json.dumps(sys.stdin.read()))')")

curl -k -v -u "$USERNAME:$PASSWORD" \
  -X PUT "https://${URL}:9443/v1/cluster/update_cert" \
  -H "Content-Type: application/json" \
  -d "$JSON_DATA"
