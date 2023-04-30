# Déploiement de plusieurs utilisateurs dans l'Active Directory d'Azure

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

resource "azuread_user" "example" {
  user_principal_name = "${each.value.name}@${var.domain}"
  display_name        = each.value.display_name
  mail_nickname       = each.value.name
  password            = each.value.password

  for_each = var.map_users
}

