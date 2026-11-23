#Resource Group
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location

  tags = var.tags
}

#Networking
module "networking" {
  source                  = "../../modules/networking"
  resource_group_name     = azurerm_resource_group.rg.name
  location                = var.location
  vnet_name               = var.vnet_name
  subnet_name             = var.subnet_name
  address_space           = var.address_space
  subnet_address_prefixes = var.subnet_address_prefixes
  tags                    = var.tags
}

#ACR Module
module "acr" {
  source              = "../../modules/acr"
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location
  acr_name            = var.acr_name
  acr_sku             = var.acr_sku
  tags                = var.tags
}

#AKS module

module "aks" {
  source              = "../../modules/aks"
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location
  cluster_name        = var.cluster_name
  dns_prefix          = var.dns_prefix
  node_count          = var.node_count
  vm_size             = var.vm_size
  subnet_id           = module.networking.subnet_id
  tags                = var.tags
}

#Allpwing AKS to pull images from ACR
resource "azurerm_role_assignment" "aks_acr_pull" {
  scope                = module.acr.acr_id
  role_definition_name = "AcrPull"
  principal_id         = module.aks.kubelet_identity_object_id
}
