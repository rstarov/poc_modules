resource "azurerm_resource_group" "rg" {
  name = "${var.area}-${var.project.name}-rsg-weu1-${var.env}"
  location = var.region.name
  tags = var.common_tags
}
