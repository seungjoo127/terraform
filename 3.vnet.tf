resource "azurerm_virtual_network" "user26-net" {
    name = "user26-vnet"
    address_space = ["26.0.0.0/16"]
    location = azurerm_resource_group.user26-rg.location
    resource_group_name = azurerm_resource_group.user26-rg.name
}
