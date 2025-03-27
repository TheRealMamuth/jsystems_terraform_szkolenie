#module "waszanazwa" {
#  source = "./modules/moj_modul"
#
#  arg_to_wasze_wariables = ""
#
#}


module "domain" {
  source       = "./modules/domain"
  zone_name    = "example.com"
  zone_id      = aws_route53_zone.main.zone_id
  droplet_ips  = module.droplets.droplet_ips
}
