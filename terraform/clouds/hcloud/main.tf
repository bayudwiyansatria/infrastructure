module "common" {
  count  = var.name == "hcloud" ? (var.enabled == true ? (var.setup.compute.enabled == true ? 1 : 0) : 0) : 0
  source = "./modules/common"
}

module "compute" {
  count  = var.name == "hcloud" ? (var.enabled == true ? (var.setup.compute.enabled == true ? 1 : 0) : 0) : 0
  source = "./modules/compute"
  setup = var.setup.compute.data
}