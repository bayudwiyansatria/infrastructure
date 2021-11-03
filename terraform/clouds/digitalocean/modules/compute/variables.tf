variable "setup" {
  type = list(object({
    name = string,
    size = string
  }))
  default = [
    {
      name = "default"
      size = "1gb-2memory"
      image = "debian-9"
    }
  ]
}

variable "region" {
  type        = string
  default     = "sgp1"
  description = "Droplet Regions"
}

variable "total" {
  type        = number
  default     = 1
  description = "Number of Droplet"
}

variable "name" {
  type        = string
  default     = "droplet"
  description = "Droplet"
}

variable "image" {
  type        = string
  default     = "ubuntu-18-04-x64"
  description = "Compute Operating System"
}

variable "size" {
  type        = string
  default     = "s-1vcpu-1gb"
  description = "Compute Resources"
}