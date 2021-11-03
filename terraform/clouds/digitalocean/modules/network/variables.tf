variable "setup" {
  type = list(object({
    name = string
  }))
  default = [
    {
      name = "default"
    }
  ]
}

variable name {
  type    = string
  default = "bayudwiyansatria"
}

variable region {
  type    = string
  default = "sgp1"
}

variable "total" {
  type    = number
  default = 1
}