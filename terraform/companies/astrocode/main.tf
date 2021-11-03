module "vultr" {
  for_each = {
    for key, value in var.clouds : key => value
    if lookup(value, "vultr", null) == null
  }
  source  = "../../clouds/vultr"
  name    = each.key
  enabled = each.value.enabled
  setup   = each.value.setup
  providers = {
    vultr = vultr.custom
  }
}

module "hcloud" {
  for_each = {
  for key, value in var.clouds : key => value
  if lookup(value, "hcloud", null) == null
  }
  source    = "../../clouds/hcloud"
  name      = each.key
  enabled   = each.value.enabled
  setup     = each.value.setup
  providers = {
    hetznercloud = hetznercloud.custom
  }
}

