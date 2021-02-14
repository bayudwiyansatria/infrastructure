resource "digitalocean_vpc" "do_vpc" {
  name     = var.name
  region   = var.region
  ip_range = "192.168.1.0/24"
}

