terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "${company}"
    workspaces {
      name = "${workspace}"
    }
  }
}
