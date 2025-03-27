resource "aws_route53_record" "subdomain_records" {
  for_each = var.droplet_ips

  zone_id = var.zone_id
  name    = "${each.key}.${var.zone_name}"
  type    = "A"
  ttl     = 300
  records = [each.value]
}

