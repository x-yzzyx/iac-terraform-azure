variable "resource_group_name" {
  description = "Name of resource group"
  type        = string
  default     = "Best resource group"
}

variable "resource_group_location" {
  description = "Location of resource group"
  type        = string
  default     = "Europe"
}

variable "storage_account_name" {
  description = "Name of storage account"
  type        = string
  default     = "Best storage account name"
}

variable "storage_account_tier" {
  description = "Tier of storage account"
  type        = string
  default     = "Standard"
}

variable "storage_account_replication_type" {
  description = "Replication type of storage account"
  type        = string
  default     = "LRS"
}

variable "storage_account_kind" {
  description = "Kind of storage account"
  type        = string
  default     = "BlobStorage"
}

variable "storage_container_name" {
  description = "Name of storage container"
  type        = string
  default     = "Best storage container name"
}

variable "storage_blob_name" {
  description = "Name of storage blob"
  type        = string
  default     = "Storage_Blob.zip"
}

variable "storage_blob_type" {
  description = "Type of storage blob"
  type        = string
  default     = "Block"
}