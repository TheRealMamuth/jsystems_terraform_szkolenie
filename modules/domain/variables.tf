variable "zone_name" {
  type        = string
  description = "Nazwa domeny"
}


variable "droplet_ips" {
  type        = map(string)
  description = "IP dropletów (Z innego modułu)"
}
