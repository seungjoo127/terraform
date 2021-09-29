resource "azurerm_subnet" "user26-subnet1" {
    name = "user26-mysubnet1"
    resource_group_name = azurerm_resource_group.user26-rg.name
    virtual_network_name = azurerm_virtual_network.user26-net.name
    address_prefixes = ["40.0.1.0/24"]
}
