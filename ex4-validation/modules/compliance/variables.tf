variable "aws_environment" {
  type = string

  validation {
    condition     = contains(["dev", "staging", "prod"], var.aws_environment)
    error_message = "L'environnement AWS doit être strictement l'un des suivants : dev, staging ou prod."
  }
}

variable "storage_size_gb" {
  type = number

  validation {
    condition     = var.storage_size_gb >= 10 && var.storage_size_gb <= 500
    error_message = "La taille du stockage doit être comprise entre 10 et 500 Go."
  }
}
