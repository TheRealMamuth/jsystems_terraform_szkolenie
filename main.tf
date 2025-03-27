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