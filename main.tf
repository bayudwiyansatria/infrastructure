# Amazon Web Services Module
module "aws" {
  source = "./aws"
}

# Digital Ocean Module
module "do" {
  source = "./do"
  do_token = var.do_token
}