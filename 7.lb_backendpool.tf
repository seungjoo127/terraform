resource "azurerm_lb_backend_address_pool" "user26-bpepool" {
    loadbalancer_id = azurerm_lb.user26-lb.id
    name = "user26-BackEndAddressPool"
}
