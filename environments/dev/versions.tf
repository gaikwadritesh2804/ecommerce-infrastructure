
terraform {
  required_version = ">= 1.6.0"

  backend "azurerm" {
    resource_group_name  = "ecommerce-tfstate-rg"
    storage_account_name = "ecommercetfstate12345"
    container_name       = "tfstate"
    key                  = "dev.terraform.tfstate"

    use_azuread_auth = true

  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}
