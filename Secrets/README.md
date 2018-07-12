# Secrets

This directory contains files used to create secrets in kubernetes. The general pattern followed here is to use a shell script to do a `sed` replace of an environment variable in a template file to create the secret file. The secret file is then applied to the kubernetes cluster via the build/deploy pipeline.

The current secrets are:

- crossroads-ssl - For the ssl cert for .crossroads.net
- dashboard-htpasswd - This is used to lock down the kubernetes dashboard located at k8s-{env}.crossroads.net to require a username and password
- newrelic - This contains the crossroads new relic secret ID that identifies the crossroads organization as the owner of the running agents.