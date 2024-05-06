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

variable "service_plan_name" {
  description = "Name of service plan"
  type        = string
  default     = "Best service plan"
}

variable "service_plan_os_type" {
  description = "OS type of service plan"
  type        = string
  default     = "Linux"
}

variable "service_plan_sku_name" {
  description = "Sku name of service plan"
  type        = string
  default     = "P1v2"
}

variable "linux_function_app_name" {
  description = "Name of linux function app"
  type        = string
  default     = "Best linux function app"
}

variable "function_app_function_name" {
  description = "Name of function app function"
  type        = string
  default     = "Best function app function"
}

variable "function_app_function_language" {
  description = "Language of function app function"
  type        = string
  default     = "CSharp"
}