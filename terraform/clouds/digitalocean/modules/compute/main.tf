resource "digitalocean_droplet" "vm" {
  for_each = {for id, data in var.setup: id => data}
  region   = var.region
  image    = each.value.image
  name     = each.value.name
  size     = each.value.size
}
