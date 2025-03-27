variable "ssh_algorithm" {
  type        = string
  description = "algorytm szyfrowania klucza ssh"
  default     = "ed25519"
  validation {
    condition     = var.ssh_algorithm == "ed25519"
    error_message = "Algorytm musi byc ed25519"
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