resource "azurerm_storage_account" "storage_name_a8" {
  name                     = "storageazureportalmbk"
  resource_group_name      = azurerm_resource_group.rg_name_a8.name
  location                 = azurerm_resource_group.rg_name_a8.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
  }
}