terraform {
  required_version = ">= 0.12.26"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.10"
    }

    do = {
      source = "digitalocean/digitalocean"
      version = ">=1.22.2"
    }
  }

  backend "remote" {
    hostname = "app.terraform.io"
    organization = "bayudwiyansatria"

    workspaces {
      prefix = "bayudwiyansatria"
    }
  }
}