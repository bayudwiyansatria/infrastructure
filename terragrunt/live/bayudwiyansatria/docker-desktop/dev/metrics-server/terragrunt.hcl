include "root" {
  path   = find_in_parent_folders()
  expose = true
}

include "metrics-server" {
  path = "${dirname(find_in_parent_folders())}/components/metrics-server/terragrunt.hcl"
}

locals {
  inputs = jsonencode({
    metrics_server_values = [
      file("files/docker.yml")
    ]
  })
}

generate "vars" {
  path              = "terragrunt.auto.tfvars.json"
  if_exists         = "overwrite"
  disable_signature = true
  contents          = local.inputs
}
