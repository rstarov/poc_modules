#Azure Generic vNet Module
data azurerm_resource_group "vnet" {
  name = var.resource_group_name
}

resource "azurerm_virtual_network" "vnet" {
  name                = "${var.project.name}-dbr-vnet"
  resource_group_name = data.azurerm_resource_group.vnet.name
  location            = data.azurerm_resource_group.vnet.location
  address_space       = var.virtualnetwork_cidr
  dns_servers         = var.dns_servers
  # tags = var.tags
  # Assign same tags as parent resource group
  tags = data.azurerm_resource_group.vnet.tags
}

resource "azurerm_subnet" "subnet" {
  count                = length(var.subnet_names)
  name                 = var.subnet_names[count.index]
  resource_group_name  = data.azurerm_resource_group.vnet.name
  address_prefix       = var.subnet_prefixes[count.index]
  virtual_network_name = azurerm_virtual_network.vnet.name
}
