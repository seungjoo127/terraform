resource "azurerm_lb_probe" "user26-lb-probe" {
    resource_group_name = azurerm_resource_group.user26-rg.name
    loadbalancer_id = azurerm_lb.user26-lb.id
    name = "http-probe"
    protocol = "Http"
    request_path = "/"
    port = 80
}
