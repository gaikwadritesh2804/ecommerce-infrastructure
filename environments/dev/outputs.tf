
output "resource_group_name" {
  description = "Azure Resource Group name"
  value       = azurerm_resource_group.rg.name
}

output "aks_cluster_name" {
  description = "AKS cluster name"
  value       = module.aks.cluster_name
}

output "acr_login_server" {
  description = "ACR login server"
  value       = module.acr.login_server
}

output "vnet_id" {
  description = "Virtual Network ID"
  value       = module.networking.vnet_id
}

output "aks_subnet_id" {
  description = "AKS subnet ID"
  value       = module.networking.subnet_id
}

output "aks_cluster_id" {
  description = "AKS cluster resource ID"
  value       = module.aks.cluster_id
}