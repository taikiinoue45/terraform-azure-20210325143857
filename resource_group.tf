terraform {
  required_version = "0.14.8"
}

provider "azurerm" {
  features {}
}

resource "random_string" "rs" {
  length  = "15"
  upper   = false
  lower   = true
  number  = false
  special = false
}

resource "azurerm_resource_group" "rg" {
  name     = "common-${random_string.rs.id}"
  location = "Japan East"
}
