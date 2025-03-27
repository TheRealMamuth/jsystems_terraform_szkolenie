variable "ssh_algorithm" {
  type        = string
  description = "algorytm szyfrowania klucza ssh"
  default     = "ED25519"
  validation {
    condition     = var.ssh_algorithm == "ED25519"
    error_message = "Algorytm musi byc ED25519"
  }

}

variable "ssh_user_public_key" {
  description = "Podaj publiczny klucz ktory bedzie dodany do polaczenia po ssh z vm"
  type        = string
  validation {
    condition     = length(var.ssh_user_public_key) > 0
    error_message = "wartosc nie moze byc pusta"
  }
}