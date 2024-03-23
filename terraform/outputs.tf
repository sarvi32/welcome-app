# Output for the Resource Group
output "azure-rg" {
  value = azurerm_resource_group.devops-rg
}

# Output for Virtual Network
output "azure-vnet" {
  value = azurerm_virtual_network.devops-vnet-1
}

# Output for Network Subnet
output "azure-subnet" {
  value = azurerm_subnet.devops-subnet-1
}

# Outputs for AKS Cluster and related RBAC
output "azure-aks-rg" {
  value = azurerm_kubernetes_cluster.devops-aks.node_resource_group
}

output "azure-aks-rg-id" {
  value = azurerm_kubernetes_cluster.devops-aks.node_resource_group_id
}

output "azure-aks-app-id" {
  value = azurerm_kubernetes_cluster.devops-aks.identity[0].principal_id
}

output "devops-aks-subscription-role-out" {
  value = azurerm_role_assignment.devops-aks-subscription-role
}

# Output for Public IP Address and DNS name
output "welcome_public_ip" {
  value = azurerm_public_ip.welcome-endpoint-ip.ip_address
}

output "welcome_fqdn" {
  value = azurerm_public_ip.welcome-endpoint-ip.fqdn
}