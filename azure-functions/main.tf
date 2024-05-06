resource "azurerm_resource_group" "resource_group" {
  name     = var.resource_group_name
  location = var.resource_group_location
}

resource "azurerm_storage_account" "storage_account" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.resource_group.name
  location                 = azurerm_resource_group.resource_group.location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_replication_type
}

resource "azurerm_service_plan" "service_plan" {
  name                = var.service_plan_name
  resource_group_name = azurerm_resource_group.resource_group.name
  location            = azurerm_resource_group.resource_group.location
  os_type             = var.service_plan_os_type
  sku_name            = var.service_plan_sku_name
}

resource "azurerm_linux_function_app" "linux_function_app" {
  name                = var.linux_function_app_name
  resource_group_name = azurerm_resource_group.resource_group.name
  location            = azurerm_resource_group.resource_group.location
  storage_account_name       = azurerm_storage_account.storage_account.name
  service_plan_id            = azurerm_service_plan.service_plan.id
  site_config {}
}

resource "azurerm_function_app_function" "function_app_function" {
  name            = var.function_app_function_name
  function_app_id = azurerm_linux_function_app.linux_function_app.id
  language        = var.function_app_function_language
  config_json = jsonencode({})
}


