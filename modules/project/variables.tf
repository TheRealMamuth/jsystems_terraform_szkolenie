variable "project_name" {
  description = "The name of the project"
  type = string
}

variable "project_purpose" {
  description = "The purpose of the project"
  type = string
  default = "Group project for testing purposes"
}

variable "description" {
  description = "The description of the project"
  type = string
  default = "This project is for testing purposes"
}

variable "environment" {
  description = "The environment of the project"
  type = string
  default = "Development"
}

variable "project_resources" {
    description = "URN of the resources to be added to the project"
    type        = list
    default = []
#     validation {
#         condition     = can(regex("^digitalocean_droplet\\.[a-zA-Z0-9_-]+\\.urn$", var.project_resources))
#         error_message = "The project_resources variable must be a valid URN in the format 'digitalocean_droplet.<name>.urn'."
#     }
}