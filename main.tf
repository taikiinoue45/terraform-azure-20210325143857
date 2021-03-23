resource "azurerm_container_registry" "acr" {
  name                     = random_string.rs.id
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  sku                      = "Premium"
  admin_enabled            = false
}

resource "azurerm_storage_account" "asa" {
  name                     = random_string.rs.id
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "asc" {
  name                  = random_string.rs.id
  storage_account_name  = azurerm_storage_account.asa.name
  container_access_type = "private"
}
