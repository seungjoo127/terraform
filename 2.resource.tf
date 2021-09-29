resource "azurerm_resource_group" "user26-rg" {
    name     = "user26rg"
    location = "koreacentral"

    tags = {
        environment = "Terraform Demo"
    }
}
