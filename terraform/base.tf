resource "azurerm_resource_group" "devops-rg" {
  name     = "DevOps_Beta"
  location = "South India"
}

resource "azurerm_virtual_network" "devops-vnet-1" {
  name                = "devops-vnet-1"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.devops-rg.location
  resource_group_name = azurerm_resource_group.devops-rg.name
}

resource "azurerm_subnet" "devops-subnet-1" {
  name                 = "devops-subnet-1"
  resource_group_name  = azurerm_resource_group.devops-rg.name
  virtual_network_name = azurerm_virtual_network.devops-vnet-1.name
  address_prefixes     = ["10.0.1.0/24"]
}