#module "waszanazwa" {
#  source = "./modules/moj_modul"
#
#  arg_to_wasze_wariables = ""
#
#}

module "domain" {
  source       = "./modules/domain"
  zone_name    = "szkolenie.aws.tf"
  droplet_ips  = module.droplets.droplet_ips
}

module "ssh-key" {
  source = "./modules/ssh-key"

  ssh_user_public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIM3epJWkP6zxtbJcCaPTG+4UCklkJ7rb1uQ/9Xq7y0L"
}
