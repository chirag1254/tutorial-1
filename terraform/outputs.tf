output "resource_group_name" {
  value       = azurerm_resource_group.rg.name
  description = "The name of the created Resource Group."
}

output "storage_account_name" {
  value       = azurerm_storage_account.adls.name
  description = "The name of the created Storage Account."
}

output "storage_account_id" {
  value       = azurerm_storage_account.adls.id
  description = "The ID of the created Storage Account."
}

output "raw_container_name" {
  value       = azurerm_storage_data_lake_gen2_filesystem.raw.name
  description = "The name of the raw data lake filesystem container."
}

output "silver_container_name" {
  value       = azurerm_storage_data_lake_gen2_filesystem.silver.name
  description = "The name of the silver data lake filesystem container."
}
