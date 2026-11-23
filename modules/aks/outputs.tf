
output "cluster_id" {
  description = "AKS cluster resource ID"
  value       = azurerm_kubernetes_cluster.main.id
}

output "cluster_name" {
  description = "AKS cluster name"
  value       = azurerm_kubernetes_cluster.main.name
}


output "kubelet_identity_object_id" {
  description = "AKS kubelet managed identity object ID"
  value       = azurerm_kubernetes_cluster.main.kubelet_identity[0].object_id
}
