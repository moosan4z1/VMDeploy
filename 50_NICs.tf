resource "azurerm_network_interface" "VM1" {
  name = "VM1"
  resource_group_name = azurerm_resource_group.Moosa.name
  location = azurerm_resource_group.Moosa.location

  ip_configuration {
    name = "ipconfig"
    subnet_id = azurerm_subnet.subnet.id
    private_ip_address_allocation = "Dynamic"
  }
}
