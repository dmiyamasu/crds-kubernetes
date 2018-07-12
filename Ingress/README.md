#Ingress

This directory contains the files necessary to deploy the ingress for the front end applications available at maestro-{env}.crossroads.net, content-{env}.crossroads.net, and several others you can see in the rules.yml file. The function of each file is as follows:

configmap.yml - configuration options for the nginx ingress controller
deployment.yml - specifies a kubernetes deployment for the ingress
hpa-scale.yml - specifies auto scaling rules for the ingress
rules.yml - specifies routes for the ingress
service.yml - specifies the service layer for the ingress