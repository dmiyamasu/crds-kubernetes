#!/bin/bash

# Copyright 2014 The Kubernetes Authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Encodes the environment variables into a Kubernetes secret.

BASE64_ENC_KEY=$(cat $CRDS_SSL_PATH/tls.key | base64 | tr -d '\n')
BASE64_ENC_CRT=$(cat $CRDS_SSL_PATH/tls.crt | base64 | tr -d '\n')
sed -e "s#{{tls_key_placeholder}}#${BASE64_ENC_KEY}#g" ./crossroads-ssl-template.yml > crossroads-ssl-interum.yml
sed -e "s#{{tls_crt_placeholder}}#${BASE64_ENC_CRT}#g" ./crossroads-ssl-interum.yml > crossroads-ssl.yml
