resource "azurerm_virtual_network" "VNET"{
    name = "VNET"
    location = azurerm_resource_group.Moosa.location
    resource_group_name = azurerm_resource_group.Moosa.name
    address_space = ["10.0.0.0/24"]
 }
 