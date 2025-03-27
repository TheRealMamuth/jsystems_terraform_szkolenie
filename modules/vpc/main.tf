resource "digitalocean_vpc" "vpc" {
  name        = "${var.name}-${random_string.random_name.result}"
  region      = var.region
  description = var.description
  ip_range    = cidrsubnet(var.base_cidr, 8, random_integer.random_3_octet.result)
}

# Random variables

resource "random_string" "random_name" {
  length  = 8
  special = false
}

resource "random_integer" "random_3_octet" {
  min = 1
  max = 255
}

