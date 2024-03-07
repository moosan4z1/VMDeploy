resource "azurerm_subnet" "subnet" {
  name = "subnet"
  resource_group_name = azurerm_resource_group.Moosa.name
  virtual_network_name = azurerm_virtual_network.VNET.name
  address_prefixes = ["10.0.0.0/27"]
}
