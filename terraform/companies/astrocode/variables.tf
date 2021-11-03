variable "clouds" {
  type        = map(object({
    enabled      = bool,
    access_token = string,
    setup        = object({
      compute = object({
        enabled = bool,
        data    = list(any)
      }),
      network = object({
        enabled = bool,
        data    = list(any)
      })
    })
  }))
  default     = {
    digitalocean = {
      enabled      = true,
      access_token = null,
      setup        = {
        compute = {
          enabled = true
          data    = [
            {
              name   = "default"
              size   = "1gb-2memory"
              image  = "ubuntu-18-04-x64",
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
  }
  description = "Deployment mapper"
}