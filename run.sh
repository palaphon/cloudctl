#!/bin/sh
echo $ICP_ENDPOINT/api/cli/kubectl-linux-amd64
curl -kLo kubectl-linux-amd64 $ICP_ENDPOINT/api/cli/kubectl-linux-amd64
chmod 755 kubectl-linux-amd64
sudo mv kubectl-linux-amd64 /usr/local/bin/kubectl

echo $ICP_ENDPOINT/api/cli/helm-linux-amd64.tar.gz
curl -kLo helm-linux-amd64.tar.gz $ICP_ENDPOINT/api/cli/helm-linux-amd64.tar.gz
mkdir helm-unpacked
tar -xvzf ./helm-linux-amd64.tar.gz -C helm-unpacked
chmod 755 helm-unpacked/linux-amd64/helm
sudo mv ./helm-unpacked/linux-amd64/helm /usr/local/bin/helm

echo $ICP_ENDPOINT/api/cli/cloudctl-linux-amd64
curl -kLo cloudctl-linux-amd64 $ICP_ENDPOINT/api/cli/cloudctl-linux-amd64
chmod 755 cloudctl-linux-amd64
sudo mv cloudctl-linux-amd64 /usr/local/bin/cloudctl
