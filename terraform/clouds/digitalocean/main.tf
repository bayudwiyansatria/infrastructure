module "compute" {
  count  = var.name == "digitalocean" ? (var.enabled == true ? (var.setup.compute.enabled == true ? 1 : 0) : 0) : 0
  source = "./modules/compute"
  setup = var.setup.compute.data
}

module network {
  count  = var.name == "digitalocean" ? (var.enabled == true ? (var.setup.network.enabled == true ? 1 : 0) : 0) : 0
  source = "./modules/network"
  setup = var.setup.network.data
}