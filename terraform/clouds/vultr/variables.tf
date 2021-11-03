variable "setup" {
  type    = object({
    compute = object({
      enabled = bool,
      data    = list(object({
        name   = string,
        size   = string,
        image  = string
        region = string
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
          name   = "default"
          size   = "1gb-2memory"
          image  = "167",
          region = "sea"
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