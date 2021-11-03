module "hcloud" {
  for_each  = var.clouds
  source    = "../../clouds/hcloud"
  name      = each.key
  enabled   = each.value.enabled
  setup     = each.value.setup
  providers = {
    hetznercloud = hetznercloud.custom
  }
}

module "digitalocean" {
  for_each = var.clouds
  source   = "../../clouds/digitalocean"
  name     = each.key
  enabled  = each.value.enabled
  setup     = each.value.setup
}