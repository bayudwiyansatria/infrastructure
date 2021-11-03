resource "hcloud_server" "vm" {
  provider    = hetznercloud
  for_each    = { for id, data in var.setup : id => data }
  name        = each.value.name
  image       = each.value.image
  server_type = each.value.size
  ssh_keys    = data.hcloud_ssh_keys.all_keys.ssh_keys.*.name

}

data "hcloud_ssh_keys" "all_keys" {
  provider    = hetznercloud
}

data "hcloud_image" "ubuntu-18" {
  provider    = hetznercloud
  name = "ubuntu-18.04"
}

data "hcloud_location" "helsinki" {
  provider    = hetznercloud
  name = "fsn1"
}

