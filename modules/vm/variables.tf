variable "name" {
  type = string
}

variable "image" {
  type    = string
  default = "ubuntu-20-04-x64"
}

variable "size" {
  type    = string
  default = "s-1vcpu-1gb"
}

variable "region" {
  type    = string
  default = "fra1"
}

variable "vpc_uuid" {
  type    = string
  default = null
}

variable "ssh_keys" {
  type    = list(string)
  default = []
}
