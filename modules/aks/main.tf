resource "azurerm_kubernetes_cluster" "main" {
  name                = var.cluster_name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.dns_prefix

  role_based_access_control_enabled = true

  default_node_pool {
    name            = "system"
    node_count      = var.node_count
    vm_size         = var.vm_size
    vnet_subnet_id  = var.subnet_id
    os_disk_size_gb = 30
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    network_plugin      = "azure"
    network_plugin_mode = "overlay"
    pod_cidr            = "10.244.0.0/16"
    service_cidr        = "10.1.0.0/16"
    dns_service_ip      = "10.1.0.10"
    load_balancer_sku   = "standard"
  }

  tags = var.tags
}
