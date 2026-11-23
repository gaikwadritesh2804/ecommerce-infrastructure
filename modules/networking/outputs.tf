
output "vnet_id" {
  description = "Virtual Network ID"
  value       = azurerm_virtual_network.main.id
}

output "subnet_id" {
  description = "AKS subnet ID"
  value       = azurerm_subnet.aks.id
}
