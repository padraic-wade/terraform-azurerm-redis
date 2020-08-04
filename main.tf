
resource "azurerm_resource_group" "redis_group" {
  location = var.location
  name = "${var.name}-resources"
}

resource "azurerm_redis_cache" "redis_cache" {
  capacity = 0
  family = var.redis_family
  location = var.location
  name = "${var.name}-redis"
  resource_group_name = azurerm_resource_group.redis_group.name
  sku_name = var.sku_name
  minimum_tls_version = var.tls_version
}