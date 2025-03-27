provider "aws" {}

provider "digitalocean" {
  token = var.do_token
}

