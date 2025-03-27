resource "digitalocean_firewall" "web" {
  name = "FW-all-out-22-in"

  droplet_ids = [digitalocean_droplet.web.id]


  inbound_rule {
    protocol         = "tcp"
    port_range       = "22"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }

  inbound_rule {
    protocol         = "icmp"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol              = "tcp"
    port_range            = "0-65535"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol              = "udp"
    port_range            = "0-65535"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }
}