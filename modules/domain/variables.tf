variable "zone_name" {
  type        = string
  description = "Nazwa domeny"
}

variable "zone_id" {
  description = "ID Zone"
  type        = string
}


variable "droplet_ips" {
  type        = map(string)
  description = "IP dropletów (Z innego modułu)"
}
