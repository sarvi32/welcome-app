resource "azurerm_public_ip" "welcome-endpoint-ip" {
  name                = "welcome-endpoint-ip"
  location            = azurerm_resource_group.devops-rg.location
  resource_group_name = azurerm_resource_group.devops-rg.name
  allocation_method   = "Static"
  domain_name_label   = "welcome"
  sku                 = "Standard"

  tags = {
    environment = "Development"
  }
}