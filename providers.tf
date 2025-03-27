provider "aws" {
  region = "eu-central-1"
}

provider "digitalocean" {
  token = var.do_token
}

