resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.dns_prefix
  oidc_issuer_enabled = true

  default_node_pool {
    name       = "default"
    vm_size    = var.vm_size
    node_count = var.node_count
  }

  identity {
    type = "SystemAssigned"
  }
  network_profile {
    network_plugin = "azure"
    network_policy = "azure"
    service_cidr   = var.service_cidr
    dns_service_ip = var.dns_service_ip

  }
}
