terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }

  required_version = ">= 1.1.0"
  
}

provider "azurerm" {
  features {} # Required for the azurerm provider
}

resource "azurerm_resource_group" "my_rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "my_storage" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.my_rg.name
  location                 = azurerm_resource_group.my_rg.location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_replication_type
}

resource "azurerm_storage_container" "my_container" {
  name                  = var.storage_container_name
  storage_account_name  = azurerm_storage_account.my_storage.name
  container_access_type = var.container_access_type
}
