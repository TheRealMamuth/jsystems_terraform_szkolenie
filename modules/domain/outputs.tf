output "subdomain_records" {
  description = "FQDN dla każdej utworzonej subdomeny"
  value = {
    for k, r in aws_route53_record.subdomain_records :
    k => r.fqdn
  }
}

output "zone_id" {
  description = "ID utworzonej Hosted Zone"
  value       = aws_route53_zone.main.zone_id
}

output "name_servers" {
  description = "Lista serwerów nazw przypisanych do Hosted Zone"
  value       = aws_route53_zone.main.name_servers
}
