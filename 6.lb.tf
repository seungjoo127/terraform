resource "azurerm_lb" "user26-lb" {
  name = "user26lb"
  location = azurerm_resource_group.user26-rg.location
  resource_group_name = azurerm_resource_group.user26-rg.name
  frontend_ip_configuration {
  name = "user26PublicIPAddress"
  public_ip_address_id = azurerm_public_ip.user26-publicip.id
 }
}
