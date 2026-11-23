
resource "azurerm_resource_group" "state" {
  name     = var.resource_group_name
  location = var.location

  tags = {
    Project   = "Ecommerce"
    Purpose   = "Terraform State"
    ManagedBy = "Terraform"
  }
}

resource "azurerm_storage_account" "state" {
  name                      = var.storage_account_name
  resource_group_name       = azurerm_resource_group.state.name
  location                  = azurerm_resource_group.state.location
  shared_access_key_enabled = false
  account_tier              = "Standard"
  account_replication_type  = "LRS"

  min_tls_version                 = "TLS1_2"
  allow_nested_items_to_be_public = false

  blob_properties {
    versioning_enabled = true
  }

  tags = {
    Project   = "Ecommerce"
    Purpose   = "Terraform State"
    ManagedBy = "Terraform"
  }
}

resource "azurerm_storage_container" "state" {
  name                  = "tfstate"
  storage_account_id    = azurerm_storage_account.state.id
  container_access_type = "private"
}
