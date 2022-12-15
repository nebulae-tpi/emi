#!/bin/bash

echo "===== Installing NebulaE CLI ======"
npm install -g @nebulae/cli
npm install -g @angular/cli@7.2.1


echo "===== Composing EMI UI for Production ======"
nebulae compose-ui production --shell-finalEnvFile="src/environments/environment.prod.ts" --shell-type="FUSE2_ANGULAR" --shell-repo="https://github.com/nebulae-tpi/emi.git" --frontend-id="emi" --output-dir="emi/" --store-type="GCP_DATASTORE" --gcp-service-account-token="gcloud-service-key.json"

echo "===== UI Composition is Done ======"
echo "emi directory contents:"
ls emi/