resource "azurerm_kubernetes_cluster" "devops-aks" {
  name                = "devops-aks"
  location            = azurerm_resource_group.devops-rg.location
  resource_group_name = azurerm_resource_group.devops-rg.name
  dns_prefix          = "cerebro-aks"

  default_node_pool {
    name       = "default"
    node_count = 2
    vm_size    = "Standard_D2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Development"
  }
}

data "azurerm_subscription" "primary" {
}

resource "azurerm_role_assignment" "devops-aks-subscription-role" {
  scope                = data.azurerm_subscription.primary.id
  role_definition_name = "Network Contributor"
  principal_id         = azurerm_kubernetes_cluster.devops-aks.identity[0].principal_id
}