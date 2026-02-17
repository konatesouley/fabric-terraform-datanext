variable "environment" {
  description = "Nom de l'environnement cible"
  type        = string

  validation {
    condition     = contains(["dev", "qa", "prod"], var.environment)
    error_message = "environment doit être dev, qa ou prod"
  }
}

variable "fabric_capacity_id" {
  description = "Capacité Fabric existante"
  type        = string
}

variable "service_principal_object_id" {
  description = "Service Principal Fabric"
  type        = string
}
