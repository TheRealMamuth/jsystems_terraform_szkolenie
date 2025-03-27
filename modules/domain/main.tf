resource "aws_route53_zone" "main" {
  name = var.zone_name
}

resource "aws_route53_record" "subdomain_records" {
  for_each = var.droplet_ips

  zone_id = aws_route53_zone.main.zone_id
  name    = each.key
  type    = "A"
  ttl     = 300
  records = [each.value]
}


