#module "waszanazwa" {
#  source = "./modules/moj_modul"
#
#  arg_to_wasze_wariables = ""
#
#}

module "project" {
    source = "./modules/project"
    project_name = "group_project"
    description = "This is a group project"
    environment = "Development"
    project_resources = []

}

module "ssh-key" {
  source = "./modules/ssh-key"

  # Argumety w module
  ssh_user_public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIM3epJWkP6zxtbJcCaPTG+4UCklkJ7rb1uQ/9Xq7y0L"
  ssh_algorithm       = "ED25519"
}


module "domain" {
  source       = "./modules/domain"
  zone_name    = "szkolenie.aws.tf"
  droplet_ips  = module.droplets.droplet_ips
}
