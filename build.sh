#!/usr/bin/env bash

export companies=$1
export command=$2
terraform -chdir=./terraform/companies/"${companies}" "${command}"
