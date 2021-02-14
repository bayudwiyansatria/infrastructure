
module "network" {
  source = "../../modules/network"
  name = var.name
  cidr = var.cidr
}
