#IngressDashboard

This directory contains the files necessary to deploy the ingress for the kubernetes dashboard available at k8s-{env}.crossroads.net. The function of each file is as follows:

deployment.yml - specifies a kubernetes deployment for the ingress
rules.yml - specifies routes for the ingress
service.yml - specifies the service layer for the ingress