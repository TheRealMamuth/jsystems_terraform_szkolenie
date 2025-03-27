#module "waszanazwa" {
#  source = "./modules/moj_modul"
#
#  arg_to_wasze_wariables = ""
#
#}


module "firewall" {
  source = "./modules/firewall_module_kn"
}