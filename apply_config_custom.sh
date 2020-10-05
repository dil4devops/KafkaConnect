#!/bin/sh
# configmap for custom key value paris

kubectl apply -f aa-data-api-configmap.yml
kubectl apply -f aa-elasticsearch-client-configmap.yml
kubectl apply -f aa-file-router-configmap.yml
kubectl apply -f aa-json-producer-configmap.yml
kubectl apply -f aa-kafka.yml
kubectl apply -f aa-provider-csv-producer-configmap.yml
kubectl apply -f aa-provider-enrollment-validator-configmap.yml
kubectl apply -f aa-provider-pipeline-configmap.yml
kubectl apply -f aa-provider-transformer-configmap.yml
kubectl apply -f aa-redshift-consumer-configmap.yml
kubectl apply -f aa-transform-rest-streamer-configmap.yml
