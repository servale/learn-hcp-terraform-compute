# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>4.51.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.6.3"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 3.6.0"
    }
  }
}
# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {
    key_vault {
      purge_soft_deleted_secrets_on_destroy = true //ONLY FOR LAB - Terraform to purge the soft-deleted secrets from the Key Vault immediately upon resource destroy, rather than leaving them in the soft-deleted (recoverable) state.
      recover_soft_deleted_secrets          = true //ONLY FOR LAB - TF will recover secret if you will attempt to create secret with the same name as the one that was deleted
    }
  }
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
  client_id       = var.client_id
  client_secret   = var.client_secret
}
