output "id" {
  value = digitalocean_vpc.vpc.id
}

output "cidr" {
  value = digitalocean_vpc.vpc.ip_range
}

output "urn" {
  value = digitalocean_vpc.vpc.urn
}
