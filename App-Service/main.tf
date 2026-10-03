resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_service_plan" "plan" {
  name                = "app-service-plan"
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location

  os_type  = "Linux"
  sku_name = "B1"
}

resource "azurerm_linux_web_app" "app" {
  name                = var.app_service_name
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location

  service_plan_id = azurerm_service_plan.plan.id

  https_only = true

  site_config {
    always_on = false

    application_stack {
      node_version = "20-lts"
    }
  }

  app_settings = {
    ENVIRONMENT = "DEV"
  }

  tags = {
    Environment = "Dev"
    ManagedBy   = "Terraform"
  }
}