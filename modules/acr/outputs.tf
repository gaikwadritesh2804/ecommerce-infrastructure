output "acr_id" {
  description = "The resource ID of the Azure Container Registry."
  value       = azurerm_container_registry.main.id
}

output "acr_name" {
  description = "The name of the Azure Container Registry."
  value       = azurerm_container_registry.main.name
}

output "login_server" {
  description = "The login server URL of the Azure Container Registry."
  value       = azurerm_container_registry.main.login_server
}
