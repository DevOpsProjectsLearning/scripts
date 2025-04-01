variable "resource_group_name" {
  description = "The name of the Azure resource group"
  type        = string
  default     = "MyResourceGroup"
}

variable "location" {
  description = "The Azure region for resources"
  type        = string
  default     = "East US"
}

variable "storage_account_name" {
  description = "The name of the Azure Storage Account (must be unique)"
  type        = string
  default     = "mystorageacct100497"
}

variable "storage_account_tier" {
  description = "The tier of the storage account (Standard or Premium)"
  type        = string
  default     = "Standard"
}

variable "storage_replication_type" {
  description = "The replication type (LRS, GRS, RAGRS, etc.)"
  type        = string
  default     = "LRS"
}

variable "storage_container_name" {
  description = "The name of the storage container"
  type        = string
  default     = "mycontainer"
}

variable "container_access_type" {
  description = "Defines the level of public access to the container"
  type        = string
  default     = "private" # Change to "blob" if you want public access
}
