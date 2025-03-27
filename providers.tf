provider "aws" {
  region = "eu-central-1"
  access_key = var.ak
  secret_key = var.sk
  token = var.at
}

provider "digitalocean" {
  token = var.do_token
}

