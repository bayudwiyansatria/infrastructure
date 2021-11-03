variable "ssh_public_key" {
  type    = list(object({
    name = string,
    key  = string
  }))
  default = [
    {
      name = "bayudwiyansatria",
      key  = "~/.ssh/id_rsa.pub"
    }
  ]
}
