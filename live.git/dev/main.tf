provider "azurerm" {
  version = "~> 1.33"
  #skip_provider_registration = true
}

terraform {
  backend "azurerm" {
  }
}
