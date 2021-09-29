resource "azurerm_lb_rule" "lbrule" {
    resource_group_name = azurerm_resource_group.user26-rg.name
    loadbalancer_id = azurerm_lb.user26-lb.id
    name = "http"
    protocol = "Tcp"
    frontend_port = 80
    backend_port = 80
    backend_address_pool_id = azurerm_lb_backend_address_pool.user26-bpepool.id
    frontend_ip_configuration_name = "user26PublicIPAddress"
    probe_id = azurerm_lb_probe.user26-lb-probe.id
}
