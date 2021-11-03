terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
    }
    hetznercloud = {
      source = "hetznercloud/hcloud"
    }
    vultr = {
      source = "vultr/vultr"
    }
  }
  backend local {}
#  backend "remote" {
#    hostname     = "app.terraform.io"
#    organization = "bayudwiyansatria"
#
#    workspaces {
#      prefix = "circleblue-"
#    }
#  }
}