variable "name" {
  type        = string
  description = "The name of the VPC"
}

variable "description" {
  type        = string
  description = "The description of the VPC"
  default     = null
}

variable "region" {
  type    = string
  default = "fra1"
}

variable "base_cidr" {
  type        = string
  default     = "10.10.0.0/16"
  description = "The base CIDR block for the VPC"

  validation {
    condition     = can(cidrsubnet(var.base_cidr, 8, 0)) && split("/", var.base_cidr)[1] == "16"
    error_message = "The base_cidr must be a valid CIDR block with a /16 base subnet mask"
  }
}
