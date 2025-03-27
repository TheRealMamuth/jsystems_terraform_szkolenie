
resource "random_string" "random_name" {
  length  = 5
  special = false
}

resource "tls_private_key" "ssh_key_priv" {
  algorithm = arg.ssh_algorithm

}


resource "digitalocean_ssh_key" "ssh_key_gen" {
  name       = "ssh-key-gen-${random_string.random_name.result}"
  public_key = tls_private_key.ssh_key_priv.public_key_openssh
}

resource "digitalocean_ssh_key" "ssh_key_user" {
  name       = "ssh-key-user-${random_string.random_name.result}"
  public_key = var.ssh_user_public_key
}


