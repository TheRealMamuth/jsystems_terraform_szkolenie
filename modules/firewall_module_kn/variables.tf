variable "source_addresses" {
  description = "List of source addresses"
  type        = list(string)
  default     = ["0.0.0.0/0", "::/0"]
}

variable "droplet_ids" {
  description = "Droplet IDs"
  type        = list(string)
}
