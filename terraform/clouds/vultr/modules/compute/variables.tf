variable "setup" {
  type = list(object({
    name = string,
    size = string,
    image = string,
    region = string
  }))
  default = [
    {
      name = "default"
      size = "1gb-2memory"
      image = "167"
      region = "sea"
    }
  ]
}