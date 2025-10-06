source 00_env.sh
curl -k -v   https://${URL}:9443/v1/nodes --cert client.crt --key client.key
