variable "access_token" {
  type    = string
  default = null
}

variable "setup" {
  type = object({
    compute = object({
      enabled = bool,
      data    = list(object({
        name = string,
        size = string,
        image = string
      }))
    }),
    network = object({
      enabled = bool,
      data    = list(object({
        name = string
      }))
    })
  })
  default = {
    compute = {
      enabled = true
      data    = [
        {
          name = "default"
          size = "1gb-2memory"
          image = "ubuntu-18-04-x64"
        }
      ]
    },
    network = {
      enabled = true
      data    = [
        {
          name = "default"
        }
      ]
    }
  }
}

variable "enabled" {
  type    = bool
  default = false
}

variable "name" {
  type    = string
  default = "digitalocean"
}