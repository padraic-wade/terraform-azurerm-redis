output "redis_id" {
  value       = azurerm_redis_cache.redis_cache.id
  description = "Redis instance id"
}

output "redis_name" {
  value       = azurerm_redis_cache.redis_cache.name
  description = "Redis instance name"
}

output "redis_hostname" {
  value       = azurerm_redis_cache.redis_cache.hostname
  description = "Redis instance hostname"
}
