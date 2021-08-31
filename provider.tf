terraform {
  required_providers {
    azuread = {
      source = "hashicorp/azuread"
      version = "1.6.0"
    }
  }
}

provider "azuread" {
  # Configuration options
  client_id = var.client_id
  client_secret = var.client_secret
  tenant_id = var.tenant_id
}

provider "azurerm" {
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
  client_secret   = var.client_secret
  client_id       = var.client_id
  features {}

}

