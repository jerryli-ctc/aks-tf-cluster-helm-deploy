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

provider "kubernetes" {
  host                   = module.aks.host
  client_certificate     = base64decode(module.aks.client_certificate)
  client_key             = base64decode(module.aks.client_key)
  cluster_ca_certificate = base64decode(module.aks.cluster_ca_certificate)
}