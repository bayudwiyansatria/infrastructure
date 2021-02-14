provider "aws" {
  region = "ap-southeast-1"
}

module "development" {
  source = "./environments/development"
}

module "staging" {
  source = "./environments/staging"
}

module "production" {
  source = "./environments/production"
}
