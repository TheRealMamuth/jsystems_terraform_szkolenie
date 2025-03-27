resource "digitalocean_firewall" "web" {
  name = "FW-all-out-22-in"

  droplet_ids  = var.droplet_ids


  inbound_rule {
    protocol         = "tcp"
    port_range       = "22"
    source_addresses = var.source_addresses
  }

  inbound_rule {
    protocol         = "icmp"
    source_addresses = var.source_addresses
  }

  outbound_rule {
    protocol              = "tcp"
    port_range            = "0-65535"
    destination_addresses = var.source_addresses
  }

  outbound_rule {
    protocol              = "udp"
    port_range            = "0-65535"
    destination_addresses = var.source_addresses
  }
}
#