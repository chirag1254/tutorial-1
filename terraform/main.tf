locals {
  # Resource naming based on best practices
  resource_group_name  = "rg-${var.project}-${var.environment}-${var.location}"
  storage_account_name = "st${var.project}${var.environment}${var.location}"
}

resource "azurerm_resource_group" "rg" {
  name     = local.resource_group_name
  location = var.location
  tags     = var.tags
}

# Provide an Azure Data Lake Storage Gen2 (Storage Account with Hierarchical Namespace enabled)
resource "azurerm_storage_account" "adls" {
  name                     = local.storage_account_name
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind             = "StorageV2"
  is_hns_enabled           = true

  # Advanced threat protection and security settings for production grade
  min_tls_version                 = "TLS1_2"
  allow_nested_items_to_be_public = false

  tags = var.tags
}
