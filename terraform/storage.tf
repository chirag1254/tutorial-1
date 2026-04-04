# ADLS Gen2 Containers (File Systems)
resource "azurerm_storage_data_lake_gen2_filesystem" "raw" {
  name               = "raw"
  storage_account_id = azurerm_storage_account.adls.id
}

resource "azurerm_storage_data_lake_gen2_filesystem" "silver" {
  name               = "silver"
  storage_account_id = azurerm_storage_account.adls.id
}

# Directories inside 'raw' container
resource "azurerm_storage_data_lake_gen2_path" "sensor" {
  path               = "sensor"
  filesystem_name    = azurerm_storage_data_lake_gen2_filesystem.raw.name
  storage_account_id = azurerm_storage_account.adls.id
  resource           = "directory"
}

resource "azurerm_storage_data_lake_gen2_path" "clickstream" {
  path               = "clickstream"
  filesystem_name    = azurerm_storage_data_lake_gen2_filesystem.raw.name
  storage_account_id = azurerm_storage_account.adls.id
  resource           = "directory"
}

resource "azurerm_storage_data_lake_gen2_path" "inventory" {
  path               = "inventory"
  filesystem_name    = azurerm_storage_data_lake_gen2_filesystem.raw.name
  storage_account_id = azurerm_storage_account.adls.id
  resource           = "directory"
}
