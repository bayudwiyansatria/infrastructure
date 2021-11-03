provider "hetznercloud" {
  alias         = "custom"
  token         = try(sensitive(var.clouds.hcloud.access_token), "91c62635c5e3a202f926654f144a54ec0b136c447a31c1c47f93c19fb5366752")
  endpoint      = "https://api.hetzner.cloud/v1"
  poll_interval = "500ms"
}

provider "vultr" {
  alias       = "custom"
  api_key     = try(sensitive(var.clouds.vultr.access_token), false)
  rate_limit  = 700
  retry_limit = 3
}

