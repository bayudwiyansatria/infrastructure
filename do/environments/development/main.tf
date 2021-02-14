module "network" {
  source = "../../modules/network"
  name = var.name
  region = var.region
}
