terraform {
  required_version = ">= 0.12.26"

  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = ">=1.22.2"
    }
  }

  backend "remote" {
    hostname = "app.terraform.io"
    organization = "bayudwiyansatria"

    workspaces {
      name = "bayudwiyansatria-digitalocean"
    }
  }
}