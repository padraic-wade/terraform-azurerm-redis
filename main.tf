
locals {
  redis_family_map = {
    Basic    = "C",
    Standard = "C",
    Premium  = "P"
  }
  name = "${data.azurerm_subscription.subscription.display_name}-${var.location}-${var.app_name}"
}
data "azurerm_subscription" "subscription" {
  }

resource "azurerm_resource_group" "redis_group" {
  location = var.location
  name = "rg-${local.name}"
}

resource "azurerm_redis_cache" "redis_cache" {
  capacity = 0
  family = lookup(local.redis_family_map, var.sku_name)
  location = var.location
  name = "redis-${local.name}-${var.redis_name}"
  resource_group_name = azurerm_resource_group.redis_group.name
  sku_name = var.sku_name
  minimum_tls_version = var.tls_version
}