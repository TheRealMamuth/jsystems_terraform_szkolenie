resource "random_integer" "random_name_part" {
  min = 0
  max = 99
}

resource "digitalocean_droplet" "vm" {
  name     = "${var.name}-${random_integer.random_name_part.result}"
  image    = var.image
  size     = var.size
  region   = var.region
  vpc_uuid = var.vpc_uuid
  ssh_keys = var.ssh_keys
}
