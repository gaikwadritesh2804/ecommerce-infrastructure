
terraform {
  required_version = ">= 1.6.0"

  required_providers {
    flux = {
      source  = "fluxcd/flux"
      version = "~> 1.7"
    }
  }

  backend "azurerm" {
    resource_group_name  = "ecommerce-tfstate-rg"
    storage_account_name = "ecommercetfstate12345"
    container_name       = "tfstate"
    key                  = "flux-bootstrap.terraform.tfstate"
    use_azuread_auth     = true
  }
}
