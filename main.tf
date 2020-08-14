terraform {
    required_version = ">=0.12.0"
}

provider "azurerm" {
   version ="=2.20.0"
   subscription_id = "XXXXXXXX"
   client_id = "XXXXXXXXX"
   client_secret = "XXXXXXXXX"
   tenant_id = "XXXXXX"
   features {}
}

resource "azurerm_resource_group" "rg2" {
   name =  var.rgname
   location = var.location
}

resource "azurerm_virtual_network" "vnet1" {
   name = var.vnet
   location = azurerm_resource_group.rg2.location
   resource_group_name = azurerm_resource_group.rg2.name
   address_space = [var.cidr]
   dns_servers = var.dnsserver
}

resource "azurerm_subnet" "subnet1" {
   name = var.subnet1
   resource_group_name = azurerm_resource_group.rg2.name
   virtual_network_name = azurerm_virtual_network.vnet1.name
   address_prefix = var.subnet1addr
}



