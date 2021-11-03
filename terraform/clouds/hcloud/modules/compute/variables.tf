variable "setup" {
  type = list(object({
    name = string,
    size = string,
    image = string
  }))
  default = [
    {
      name = "default"
      size = "1gb-2memory"
      image = "debian-9"
    }
  ]
}

variable "access_token" {
  sensitive = true
  type      = string
  default   = null
}

variable "name" {
  type        = string
  default     = "circleblue-vm-1"
  description = "VM's Name"
}

variable "image" {
  type        = string
  default     = "debian-9"
  description = "VM's Operating System"
}

# https://www.hetzner.com/cloud
variable "size" {
  type        = string
  default     = "cx11"
  description = "VM's Size"
}