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
  name     = "MyResourceGroup"
  location = "East US"
}

resource "azurerm_storage_account" "my_storage" {
  name                     = "mystorageacct100497"
  resource_group_name      = azurerm_resource_group.my_rg.name
  location                 = azurerm_resource_group.my_rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "my_container" {
  name                  = "mycontainer"
  storage_account_name  = azurerm_storage_account.my_storage.name
  container_access_type = "private" # Change to "blob" if you want public access
}
