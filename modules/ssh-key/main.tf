
resource "random_string" "random_name" {
  length = 5
  special = false
}

resource "tls_private_key" "ssh_key_gen" {
  algorithm = arg.ssh_algorithm

}


resource "digitalocean_ssh_key" "key1" {
   name       = "ssh-key-gen-${random_string.random_name.result}"
  public_key = tls_private_key.ssh_key_gen.public_key_openssh
}

resource "digitalocean_ssh_key" "ssh_key" {
  name       = "ssh-key-user-${random_string.random_name.result}"
  public_key = var.ssh_user_public_key
}


