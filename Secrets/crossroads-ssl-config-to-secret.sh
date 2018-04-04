#!/bin/bash
# Encodes the environment variables into a Kubernetes secret.

BASE64_ENC_KEY=$(cat $CRDS_SSL_PATH/tls.key | base64 | tr -d '\n')
BASE64_ENC_CRT=$(cat $CRDS_SSL_PATH/tls.crt | base64 | tr -d '\n')
sed -e "s#{{tls_key_placeholder}}#${BASE64_ENC_KEY}#g" \
-e "s#{{tls_crt_placeholder}}#${BASE64_ENC_CRT}#g" \
-e "s#{{namespace}}#${INGRESS_NAMESPACE}#g" ./crossroads-ssl-template.yml > crossroads-ssl.yml
