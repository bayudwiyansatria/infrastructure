provider "digitalocean" {
  token = var.do_token
}

module "development" {
  source = "./environments/development"
}