resource "vultr_instance" "vm" {
  provider = vultr
  for_each = {for id, data in var.setup : id => data}
  os_id    = tonumber(each.value.image)
  plan     = each.value.size
  region   = each.value.region
}


data "vultr_region" "region" {
  filter {
    name   = "id"
    values = ["sea"]
  }
}