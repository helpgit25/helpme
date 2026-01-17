# resource -- keyword which can help you to create the resources
# data -- keyword which can help you to work with existing resources

resource "azurerm_resource_group" "main" {
    name        = var.RG_NAME
    location    = var.RG_LOCATION 
}
resource "azurerm_network_security_group" "main" {
    name                = var.NSG_NAME
    resource_group_name = azurerm_resource_group.main.name
    location            = azurerm_resource_group.main.location 
}
resource "azurerm_virtual_network" "main" {
    name                = var.TF_VNET_NAME
    resource_group_name = azurerm_resource_group.main.name
    location            = azurerm_network_security_group.main.location
    address_space       = [var.VNET_ADDRESS_SPACE]
}

resource "azurerm_subnet" "main" {
    name                    = var.SUBNET_NAME
    virtual_network_name    = azurerm_virtual_network.main.name
    resource_group_name     = azurerm_resource_group.main.name
    address_prefixes        = [var.VNET_SUBNET_ADDRESS_PREFIX]
}


resource "" "name" {
  
}