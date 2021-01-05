#!/bin/bash

TERRAFORM_CMD="docker run -it -v "$PWD":"$PWD" -w "$PWD"/iac/terraform hashicorp/terraform:light"

cd iac/terraform

logger -s "Initializing the project..."

$TERRAFORM_CMD init 1>/dev/null

logger -s "Getting the list of IPv4 CIDRs..."

$TERRAFORM_CMD apply -auto-approve 1>/dev/null

$TERRAFORM_CMD output -json cidrs
