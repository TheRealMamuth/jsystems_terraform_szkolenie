variable "do_token" {
  type        = string
  description = "This is API for digitalocean"
  sensitive   = true
}

variable "sk" {
  type        = string
  description = "This is secret key"
  sensitive   = true
  
}

variable "ak" {
  type        = string
  description = "This is access key"
  sensitive   = true
  
}

variable "at" {
  type        = string
  description = "This is token"
  sensitive   = true
}
