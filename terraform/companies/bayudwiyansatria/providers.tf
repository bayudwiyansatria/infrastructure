provider hetznercloud {
  alias = "custom"
  token = var.clouds.hcloud.access_token
}

provider vultr {
  alias = "custom"
  token = var.clouds.vultr.access_token
}

