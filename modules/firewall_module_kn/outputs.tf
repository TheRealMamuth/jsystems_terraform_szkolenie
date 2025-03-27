output "inbound_rules" {
  description = "Inbound rules"
  value = digitalocean_firewall.web.inbound_rule
}

output "outbound_rules" {
  description = "Outbound rules"
  value = digitalocean_firewall.web.outbound_rule
}