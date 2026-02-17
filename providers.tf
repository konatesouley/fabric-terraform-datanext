# Configuration principale Terraform pour Microsoft Fabric
terraform {
  required_version = ">= 1.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.47"
    }
    fabric = {
    #   source  = "microsoft/fabric"
    #   version = "~> 1.6.0"
      source  = "microsoft/fabric"
      version = ">= 1.6.0"
    }
  }
}

# Configuration du provider Azure
provider "azurerm" {
  features {}
}

provider "azuread" {
    
}

# Configuration du provider Fabric
provider "fabric" {
  # Configuration sera ajoutée selon vos besoins
  use_cli = true
  preview = true
}