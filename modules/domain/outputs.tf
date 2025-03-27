output "subdomain_records" {
  description = "Mapowanie nazw subdomen"
  value = {
    for k, r in aws_route53_record.subdomain_records :
    k => r.fqdn
  }
}
