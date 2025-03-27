output "ssh_key_gen_id" {
  value = digitalocean_ssh_key.ssh_key_gen.id
}

output "ssh_key_user_id" {
  value = digitalocean_ssh_key.ssh_key_user.id
}

output "ssh_key_list_ids" {
  value = [digitalocean_ssh_key.ssh_key_gen.id, digitalocean_ssh_key.ssh_key_user.id]
}