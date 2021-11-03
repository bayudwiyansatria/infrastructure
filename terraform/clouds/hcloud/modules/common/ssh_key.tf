resource "hcloud_ssh_key" "access" {
  provider    = hetznercloud
  for_each   = { for id, data in var.ssh_public_key : id => data }
  name       = each.value.name
  public_key = each.value.key
}
