terraform {
  backend "azurerm" {
    resource_group_name   = "Backend-Storage"
    storage_account_name  = "backendstorageaccount100"
    container_name        = "backend-container"
    key                   = "terraform.tfstate"
  }
}
