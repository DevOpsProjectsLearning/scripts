output "blob_container_url" {
  value = azurerm_storage_account.my_storage.primary_blob_endpoint
  description = "URL of the Blob Storage"
}