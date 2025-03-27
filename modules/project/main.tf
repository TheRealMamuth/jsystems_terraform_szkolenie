resource "digitalocean_project" "project" {
    name        = "${var.project_name}-${random_string.random_project_name.result}"
    purpose     = var.project_purpose
    description = var.description
    environment = var.environment
    resources   = var.project_resources
}

resource "random_string" "random_project_name" {
    length  = 8
    special = false
}