resource "azurerm_network_security_group" "mynsg" {
    name                = "myNetworkSecurityGroup"
    location            = azurerm_resource_group.user26-rg.location
    resource_group_name = azurerm_resource_group.user26-rg.name
    
    security_rule {
        name                       = "SSH"
        priority                   = 1001
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "22"
        source_address_prefix      = "20.41.112.40"   ## Admin 서버 IP 주소 혹은 접속하는 서버(or PC) IP주소
        destination_address_prefix = "*"
    }
    security_rule {
        name                       = "SSH2"
        priority                   = 3001
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "22"
        source_address_prefix      = "20.41.114.115"   ## Admin 서버 IP 주소 혹은 접속하는 서버(or PC) IP주소
        destination_address_prefix = "*"
    }

    security_rule {
        name                       = "SSH3"
        priority                   = 4001
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "22"
        source_address_prefix      = "20.41.112.59"   ## Admin 서버 IP 주소 혹은 접속하는 서버(or PC) IP주소
        destination_address_prefix = "*"
    }

 security_rule {
        name                       = "HTTP"
        priority                   = 2001
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "80"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
    }

    tags = {
        environment = "Terraform Demo"
    }
}

